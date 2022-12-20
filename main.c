#include <stdio.h>
#include <unistd.h>

int	main(int argc, char *argv[])
{
	if (argc != 2)
		return (2);
	if (!access(argv[1], F_OK | X_OK))
		printf("%s Exists and is Executable!\n", argv[1]);
	else
		printf("%s Don't Exist or don't executable!\n", argv[1]);
	return (0);
}
