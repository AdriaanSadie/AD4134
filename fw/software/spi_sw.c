#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <time.h>
#include <math.h>

int msleep (int millisec)
{
  useconds_t usec;
  int ret;


  /* wrapper to usleep() but values in milliseconds instead */


  usec = (useconds_t) millisec *1000;
  ret = usleep (usec);
  return (ret);
}


int main(int argc, char **argv)
{
  int fd;
  int cmd, val;
  void *leds_gpio, *spi_read, *spi_write, *config_write;
  char *name = "/dev/mem";
  int arg_val;

  if (argc <= 2) {
    printf("No inputs given. Options: \r\n");
    printf("1 - LEDS (Red Pitaya) \r\n");
    printf("2 - SPI Write \r\n");
    printf("3 - Write to Config Register \r\n");
		printf("4 - Setup all SPI Devices \r\n");
		printf("5 - Setup all I2C Devices \r\n");
		printf("6 - Red Pitaya LED Sequence 1 \r\n");
		printf("7 - Red Pitaya LED Sequence 2 \r\n");
		printf("8 - Read all GPIO current values in registers \r\n");
  }
  else if (argc == 3) {
    cmd = atof(argv[1]);
    val = atof(argv[2]);
    
    if((fd = open(name, O_RDWR)) < 0) {
      perror("open");
      return EXIT_FAILURE;
    }
    
    // Map the memory locations of all GPIO blocks:
    leds_gpio = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x41200000);
    spi_write = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x41220000);
    config_write = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x41230000);
    
    switch (cmd)
    {
      case 1:
				printf("Writing to LEDS \r\n");
				sscanf(argv[2], "%x", &arg_val);
        *((int32_t*)(leds_gpio)) = arg_val;
        break;
      
      case 2:
        printf("Writing to SPI \r\n");
				sscanf(argv[2], "%x", &arg_val);
				*((int32_t*)(spi_write)) = arg_val;	
        break;
        
      case 3:
        printf("Writing to config register \r\n");
				sscanf(argv[2], "%x", &arg_val);	
        *((int32_t*)(config_write)) = arg_val;
        break;
				
			case 4:
        printf("Setting up SPI Devices....... \r\n");

				*((int32_t*)(spi_write)) = 0x0;
				msleep(20);
				*((int32_t*)(spi_write)) = 0xC000; //Input voltage divider write protection CH1/3
				msleep(20);
				*((int32_t*)(spi_write)) = 0x0;
				msleep(20);
				*((int32_t*)(spi_write)) = 0xC800; //Offset voltage divider write protection CH1/3
				msleep(20);
				*((int32_t*)(spi_write)) = 0x0;
				msleep(20);
				*((int32_t*)(spi_write)) = 0xD000; //Input voltage divider write protection CH2/4
				msleep(20);
				*((int32_t*)(spi_write)) = 0x0;
				msleep(20);
				*((int32_t*)(spi_write)) = 0xD800; //Offset voltage divider write protection CH2/4
				msleep(20);

				printf("SPI Devices write protection removed. Ready for values \r\n");

        break;
			
			case 5:
        printf("Setting up I2C Devices....... \r\n");

				
        *((int32_t*)(config_write)) = 0x0;
				msleep(20);
				*((int32_t*)(config_write)) = 0x80000000;
				msleep(20);
				*((int32_t*)(config_write)) = 0x0;
				msleep(20);
				*((int32_t*)(config_write)) = 0x80000100;
				msleep(20);
				*((int32_t*)(config_write)) = 0x0;
				msleep(20);
				*((int32_t*)(config_write)) = 0xC0000000;
				msleep(20);
				*((int32_t*)(config_write)) = 0x0;
				msleep(20);
				*((int32_t*)(config_write)) = 0xC0000100;
				msleep(20);
				
				printf("I2C Devices GPIOs set as outputs. Ready for values \r\n");
				
        break;
				
			case 6:
        printf("Running LED Sequence 1 on Red Pitaya\r\n");
				
				for (int i = 0; i < 128; i++) {
					msleep(50);
					*((int32_t*)(leds_gpio)) = i;
				}
				*((int32_t*)(leds_gpio)) = 0;
        break;
				
			case 7:
        printf("Running LED Sequence 2 on Red Pitaya\r\n");
				/*
				for (int i = 0; i < 10; i++) {
					for (int j = 0; j < 7; j++){
						msleep(100);
						*((int32_t*)(leds_gpio)) = (int)pow(2, j);
					}
				}
				*((int32_t*)(leds_gpio)) = 0;
				*/
        break;
        
      default:
        // Do nothing
      break;
			
			case 8:
        printf("\r\nValues in GPIO Registers: \r\n");
				printf("LEDs : %x \r\n", *((int32_t*)(leds_gpio)));
				printf("SPI : %x \r\n", *((int32_t*)(spi_write)));
				printf("Config : %x \r\n\r\n", *((int32_t*)(config_write)));
				
        break;
    }
    
    
  }
  else val = 0;

  return EXIT_SUCCESS;
}
