#include <unistd.h>

int main()
{
	uid_t uid = geteuid();
	gid_t gid = getegid();
	setresgid(gid, gid, gid);
	setresuid(uid, uid, uid);
	system("getflag > /tmp/token");
}
