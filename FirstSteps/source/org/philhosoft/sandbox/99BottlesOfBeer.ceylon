String bottleNumber(Integer bn)
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

String onTheWall(String sep) => " on the wall" + sep;

String twoVerses(Integer bn) =>
		bottleNumber(bn) + onTheWall(", ") + bottleNumber(bn).lowercased + ".\n" +
		"Take one down and pass it around, " + bottleNumber(bn-1).lowercased + onTheWall(".\n");

String finalVerse() =>
		bottleNumber(0) + onTheWall(", ") +
		bottleNumber(0).lowercased + ".\n" +
		"Go to the store, buy some more!";

void sing99BottlesOfBeer_procedural()
{
	for (bn in 99..1)
	{
		print(twoVerses(bn));
	}
	print(finalVerse());
}

void sing99BottlesOfBeer_functional()
{
	value beers = loop(99, (-1).plus).takeWhile(1.notLargerThan).map(twoVerses);
	print("\n".join(beers) + "\n" + finalVerse());
}
