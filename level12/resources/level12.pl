#!/usr/bin/env perl
# localhost:4646
use CGI qw{param};
print "Content-type: text/html\n\n";

sub t {
  $nn = $_[1];
  $xx = $_[0];
  print $xx . "\n";
  $xx =~ tr/a-z/A-Z/;
  print $xx . "\n";
  $xx =~ s/\s.*//;
  print $xx . "\n";
  @output = `egrep "^$xx" ls>/tmp/OK 2>&1`;
  foreach $line (@output) {
      ($f, $s) = split(/:/, $line);
      if($s =~ $nn) {
          return 1;
      }
  }
  return 0;
}

sub n {
  if($_[0] == 1) {
      print("..");
  } else {
      print(".");
  }
}

print(param("x") . "\n");
print(param("y") . "\n");
n(t(param("x"), param("y")));
