import std.stdio;

void main()
{
	immutable long factOfFive = factorial(5);
	pragma(msg, "Compile Time value: ", factOfFive);
}

long factorial(int n)
{
	if(n < 0)
		return 0;
	else if(n < 2)
		return n;
	else
		return n * factorial(n - 1);
}