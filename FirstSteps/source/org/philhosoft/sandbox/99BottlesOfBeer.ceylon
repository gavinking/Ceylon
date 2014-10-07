String giveBottleNumber(Integer bn)
{
	String bs;
	if (bn == 0)
	{
		bs = "No more bottles";
	}
	else if (bn == 1)
	{
		bs = "One bottle";
	}
	else
	{
		bs = bn.string + " bottles";
	}
	return bs + " of beer";
}

String giveTwoVerses(Integer bn) =>
	giveBottleNumber(bn) + " on the wall, " + giveBottleNumber(bn).lowercased + "\n" +
	"Take one down and pass it around, " + giveBottleNumber(bn-1).lowercased + " on the wall,\n";

void sing99BottlesOfBeer_procedural()
{
	for (bn in 99..1)
	{
		print(giveTwoVerses);
	}
	print("No more bottles of beer on the wall,\nNo more bottles of beer");
	print("Go to the store, buy some more!");
}

void sing99BottlesOfBeer_functional()
{
	value beers = loop(99, (-1).plus).takeWhile(0.notLargerThan).map(giveTwoVerses);
	print("\n".join(beers));
	print("No more bottles of beer on the wall,\nNo more bottles of beer");
	print("Go to the store, buy some more!");
}
