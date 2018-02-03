my $ip;

if (@ARG) {
	$ip = shift @ARG;
} else {
	print "Enter ip:";
	chomp($ip = <STDIN>);
}

printf "0x%08x\n" , unpack 'N' , pack 'C4' , reverse split '\.' , $ip;
