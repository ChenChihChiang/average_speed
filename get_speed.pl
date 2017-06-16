#!/bin/perl -w


my $n = 0;
my $ss = 0;
my $avg = 0;

open(open_file,"download.txt")or die "open file error";
while(<open_file>)
{
   chomp;

   if ($_ =~ /saved/){
  
       my @values = split(' ', $_);  
  
       foreach my $val (@values) {  
        
          if ($val =~ /\(/){
        
             my $s = substr $val, 1; 

             $n = $n + 1;
 
             $ss = $ss + $s;  

          }
       }
   }  
}

$avg = $ss / $n;
print "total download ".$n." times, average speed is ".$avg."MB/s\n";
