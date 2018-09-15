#!/usr/bin/perl
#use warnings;
#use POSIX;
#use Getopt::Long;
#our $options =();
my @block_size = ('512','256','128','64','32');
my @L1associativity_i = ('16','8','4','2','1');
my @L1associativity_d = ('16','8','4','2','1');
my @L2associativity1 = ('4','2');
my $l1i_size1 = "128kB";
my $l1d_size1 = "128kB";
my $cputype="timing";
my $L2_size="1MB";
my $run = "";
foreach my $L1associativity_i1 (@L1associativity_i)
{
foreach my $L1associativity_d1 (@L1associativity_d)
{
foreach my $L2associativity2(@L2associativity1 )
{
foreach my $block_size1 (@block_size)
{
$run1 = "/usr/local/gem5/build/X86/gem5.opt -d
/home/013/m/mx/mxs162530/CAproject/Project1_SPEC-master/456.hmmer
/usr/local/gem5/configs/example/se.py -c
/home/013/m/mx/mxs162530/CAproject/Project1_SPEC-master/456.hmmer/src/benchmark -o
/home/013/m/mx/mxs162530/CAproject/Project1_SPECmaster/456.hmmer/data/bombesin.hmm
-I 500000000 --cpu-type=$cputype --caches --l2cache --
l1i_size=$l1i_size1 --l1d_size=$l1d_size1 --l2_size=$L2_size --l1i_assoc=$L1associativity_i1 --
l1d_assoc=$L1associativity_d1 --l2_assoc=$L2associativity2 --cacheline_size=$block_size1";
system($run1);
system ("cp /home/013/m/mx/mxs162530/CAproject/Project1_SPECmaster/456.hmmer/stats.txt
/home/013/m/mx/mxs162530/CAproject/Project1_SPECmaster/statspart3_hmmer/456.hmm_${block_size1}_${L1associativity_i1}_${L1associativity_d1}_
${L2associativity2}_${l1i_size1}_${l1d_size1}_l2_1.txt");
}
}
}
}