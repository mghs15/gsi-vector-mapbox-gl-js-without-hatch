use strict;
my $start = time;
print $start;
print  "\n---------------------------\n";

my @allfile = glob "*.json";

my %results = ();

foreach my $filename (@allfile) {
	my $outfilename = "docs/".$filename;
	open (OutFH, ">", $outfilename) or die "$!";

	open(FH, $filename) or die "$!";
	my @lines = <FH>;
	foreach my $d (@lines) {
	
#insert here ----------------------
#std ---
#湿地
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-minus-12-20,90,255,1-\"/\"fill-color\":\"rgba\(153,238,192,1\)\"/g;
#万年雪
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-dot-4-20,90,255,1-\"/\"fill-color\":\"rgba\(100,150,255,0.2\)\"/g;
#砂礫地（領域が明瞭な場合）
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-dot-4-200,160,60,1-\"/\"fill-color\":\"rgba\(200,160,60,0.2\)\"/g;
#$d =~ s/\"fill-pattern\":\"-gsibv-hatch-dot-4-200,160,60,1-\"/\"fill-pattern\":\"雨裂（下部）-20\"/g;
#建物・構造物（左上→右下）
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-ltrb-4-255,135,75,1-255,255,255,1\"/\"fill-color\":\"rgba\(255,210,190,1\)\"/g;
#高層建物
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-cross-4-255,135,75,1-255,255,255,1\"/\"fill-color\":\"rgba\(255,180,150,1\)\"/g;
#無壁舎
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-ltrb-4-255,135,75,1-255,255,255,0\"/\"fill-color\":\"rgba\(255,230,190,1\)\"/g;

#pale ---
#湿地
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-minus-12-20,90,255,1-\"/\"fill-color\":\"rgba\(153,238,192,1\)\"/g;
#万年雪
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-dot-4-20,90,255,1-\"/\"fill-color\":\"rgba\(100,150,255,0.2\)\"/g;
#砂礫地（領域が明瞭な場合）ZL11~14
#$d =~ s/\"fill-pattern\":\"-gsibv-hatch-dot-4-230,230,230,1-\"/\"fill-color\":\"rgba\(200,160,60,0.25\)\"/g;
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-dot-4-230,230,230,1-\"/\"fill-color\":\"rgba\(230,230,230,0.2\)\"/g;
#砂礫地（領域が明瞭な場合）
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-dot-4-230,230,230,1-\"/\"fill-color\":\"rgba\(200,160,60,0.2\)\"/g;
#$d =~ s/\"fill-pattern\":\"-gsibv-hatch-dot-4-230,230,230,1-\"/\"fill-pattern\":\"雨裂（下部）-20\"/g;
#建物・構造物（左上→右下）
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-ltrb-4-210,210,210,1-255,255,255,1\"/\"fill-color\":\"rgba\(180,180,180,1\)\"/g;
#高層建物
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-cross-4-210,210,210,1-255,255,255,1\"/\"fill-color\":\"rgba\(160,160,160,1\)\"/g;
#無壁舎
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-ltrb-4-210,210,210,1-255,255,255,0\"/\"fill-color\":\"rgba\(210,210,210,1\)\"/g;

#blank ---
#建物・構造物（左上→右下）※普通無壁舎含む
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-ltrb-4-255,255,255,1-255,255,255,1\"/\"fill-color\":\"rgba\(255,255,255,1\)\"/g;
#堅ろう無壁舎
$d =~ s/\"fill-pattern\":\"-gsibv-hatch-ltrb-4-255,255,255,1-255,255,255,0\"/\"fill-color\":\"rgba\(255,255,255,1\)\"/g;



#insert end  ----------------------
	
	print OutFH $d;
	}
	close(FH);
	close(OutFH);
}

print  "\n---------------------------\n";
print  "\n";
print time;
print  "\n";
print time -  $start;  # 経過時間を出力
