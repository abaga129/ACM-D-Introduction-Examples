import std.stdio;

void main()
{
	//This line is replaced with the string intDefinition
	mixin(intDefinition);

	//i is defined as 10
	int f = i + 20;

	//assert that f is 30
	assert(f == 30);

	mixin myTemplateMixin;
	someFunction();
}

//Must be immutable so it is available at compile time
immutable string intDefinition = "int i = 10;";

mixin template myTemplateMixin()
{
	void someFunction()
	{
		writeln("Sup fam");
	}
}