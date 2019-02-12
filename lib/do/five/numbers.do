
~ Hello world, this is a do introduction. Here we will define some numbers.
~ Comments are introduced by tilde, like a holiday by the sea shore.
~ See how relaxing it can be compared to sharps and stars.

~ A do file starts by stating its module.
~ Modules are namespaces for scoping definitions.
~ Scopes are introduced by a column (:) like a submarine.

module do.five.numbers :

~ Definitions for use by other modules can be grouped in a public scope.

public :

~ A class is a group of properties about data.
~ Class definitions end with a semicolumn (;) and can be empty.

class number;

~ A class can be hinged as a subclass of another class with an arrow (->).

class complex -> number;
class real -> complex;
class rational -> real;
class relative -> rational;
class natural -> relative;

~ Classes can also accept arguments.
~ Arguments are positional and have a class.
~ They are retrieved using dot (.), eg number.inf .
~ The same name can be used for different classes with different argument classes.

class number (number inf, number sup) -> number;
class complex (complex inf, complex sup) -> complex;
class real (real inf, real sup) -> real;
class rational (rational inf, rational sup) -> rational;
class relative (relative inf, relative sup) -> relative;
class natural (natural inf, natural sup) -> natural;

~ Class method prototypes are described by a return class and a pattern.

number (number) + (number);
number (number) - (number);
number (number) . (number);
number (number) / (real);
relative (relative) % (relative);
complex (complex) exp (complex);
real log (real, real);

~ The introduction is continued in fv.do
