#include <fcntl.h>
#include <unistd.h>

int main(void)
{
	int fd = open("/tmp/chmod", O_RDWR);
	int ret;
	char buffer[4096];
	int fd2 = open("/tmp/chmodo", 601, 0777);
	while ((ret = read(fd, buffer, 4096)))
		write(fd2, buffer, ret);
	close(fd);
	return 0;
}