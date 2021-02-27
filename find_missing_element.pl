#Statement : To find out missing number from sorted series of numbers  

print"\nEnter size of array";
my $count = <STDIN>;
my @list=(1..$count);	
@list=@list[0..$count];
for(my $i=0;$i <$count ;$i++)
{	print"\n enter element=";
	my $num=<STDIN>;
	$list[$i]= $num;
}

if ($list[0]!=1)
{	
	print"wrong input";
}
else 
{	

	my $count1= $count -1;
	my $num = &findNumbers(\@list,$count);
	print"\n missing number is =$num\n" ;
	
}

sub findNumbers()
{	
	my ($refList, $n) =@_;
	my @arr = @{$refList};
	my $i; my $total;
	$total=($n+1)*($n+2)/2;
	for($i=0;$i<$n;$i++)
	{
		$total -= $arr[$i];
	}
	return $total;
}
