
module do.type-theory;

include do.five.fv;

public:

~ Types describe binary representation of values.
~ They serve to link compilers and electronics.
~ type t; t -> binary;

class type;

unsigned sizeof (type a) {
  return a.bits;
}

type (type item) [ (unsigned e1) ] {
  return 
}
