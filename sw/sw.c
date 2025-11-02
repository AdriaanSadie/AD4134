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



int main(int argc, char **argv)
{
  int fd;
  int cmd, val;
  void *leds_gpio, *bram_control, *bram_read;
  char *name = "/dev/mem";
	
	unsigned int bram_enable = 0xFFFFFFFF;
	unsigned int bram_disable = 0x00000000;

	if((fd = open(name, O_RDWR)) < 0) {
      perror("open");
      return EXIT_FAILURE;
    }
		
	leds_gpio = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x41200000);
  bram_control = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x41210000);
  bram_read = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x40000000);

  if (argc < 2) {
    printf("Options: \r\n\r\n");
		printf("1 - LEDS + Hex value to write (e.g. 0xFFFFFFFF all on) \r\n");
		printf("2 - BRAM Write enable \r\n");
		printf("3 - BRAM Read \r\n");
		printf("\r\n");
  }
	
  else if (argc == 2) {
    
		cmd = atof(argv[1]);
			
		if (cmd == 1){
			printf("LED GPIO Register : %x \r\n", *((int32_t*)(leds_gpio)));
		}
		else if (cmd == 2){
			printf("Enabling BRAM Tester \r\n");
			*((int32_t*)(leds_gpio)) = bram_enable;
		}
		else if (cmd == 3) {
			printf("Reading BRAM \r\n\r\n");
			for(int i = 0; i < 24; i++){
				printf("BRAM%d : %x \r\n",i, *((int32_t*)(bram_read) + i));
			}
			
		}
		else{
			printf("invalid command \r\n");
		}
		
		
		//sleep(5);
		
		//printf("BRAM0 : %x \r\n", *((int32_t*)(bram_read)));
		//printf("BRAM1 : %x \r\n", *((int32_t*)(bram_read)) + 4);
		
		
  }
	
	else if (argc == 3) {
		
		cmd = atof(argv[1]);
    val = atof(argv[2]);
		
		if (cmd == 1){
			sscanf(argv[2], "%x", &val);
			printf("Value write to LEDS:  %x \r\n", val);
			*((int32_t*)(leds_gpio)) = val;
		}
		else{
			printf("invalid command \r\n");
		}
    
	}
  else val = 0;

  return EXIT_SUCCESS;
}
