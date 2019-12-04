#!/usr/bin/php
<?php

function y($m)
{
	$m = preg_replace("/\./", " x ", $m);
	$m = preg_replace("/@/", " y", $m);
	return $m;
}

function x($y, $z)
{
	$a = file_get_contents($y);
	print 'A1:' . $a . "\n";
	$a = preg_replace("/(\[x (.*)\])/e", "y(\"\\2\")", $a);
	print 'A2:' . $a . "\n";
	$a = preg_replace("/\[/", "(", $a);
	print 'A3:' . $a . "\n";
	$a = preg_replace("/\]/", ")", $a);
	print 'A4:' . $a . "\n";
	return $a;
}

$r = x($argv[1], $argv[2]);
print "av[1]: " . $argv[1] . "\n";
print "av[2]: " .  $argv[2] . "\n";
print "RES:\n\n" . $r . "\n";

?>
