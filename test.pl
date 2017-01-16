#!/usr/bin/perl -w
open IN,"$ARGV[0]"||die $!;
my%hash;
$/=">";<IN>;
while(<IN>){
	my($id,$seq)=split/\n/,$_,2;
	chomp$seq;
	$seq=~ s/\n//g;
	$seq=~ s/\s+//g;#print $seq;die;
	my$gc=($seq=~y/GC/GC/);
	my$at=($seq=~y/AT/AT/);#print $seq;
	print "$id\ngc:$gc\tat:$at\n";
}
$/="\n";
close IN;