import std.stdio;

void main() nothrow @nogc
{
	immutable long factOfFive = factorial(5);
	pragma(msg, "Compile Time value: ", factOfFive);

	//static immutable Foo f = cast(immutable Foo)makeAFoo();
}

long factorial(int n) nothrow @nogc
{
	if(n < 0)
		return 0;
	else if(n < 2)
		return n;
	else
		return n * factorial(n - 1);
}

class Foo
{

}

Foo makeAFoo()
{
	return new Foo();
}