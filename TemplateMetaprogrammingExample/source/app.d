import std.stdio;

void main()
{
	MyClass myClass = Allocator!MyClass.New(10);
}

template Allocator(alias className)
{
	className New(Args...)(Args args)
	{
		return new className(args);
	}
}

class MyClass
{
	this(int i)
	{
		writefln("New MyClass constructed with i = %s", i );
	}
}