import std.stdio;
import core.memory;

// By declaring main() as nothrow @nogc, All functions called from it
// must also be nothrow @nogc
void main() nothrow @nogc
{
	//foo();  //Error because foo is not nothrow or @nogc
	//foo2(); //Error foo2 may throw
	//foo3(); //Ok
}

int foo()
{
	return 10;
}

int foo2() nothrow
{
	return 0;	
}

int foo3() nothrow @nogc
{
	return 1;
}

class EmptyClass
{

}