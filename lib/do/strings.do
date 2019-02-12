
module do.strings;

include {
  do.five.fv;
  do.vectors;
}

class string;

type string(symbol encoding, unsigned size) {
  -> vector(encoding, size, 0);
  -> string;
}

type string(unsigned size) -> string(CHAR_ENCODING, size);

unsigned length (string(unsigned size) str) {
  unsigned pos = 0;
  do {
    unless (pos < size && str[pos])
      return;
    pos++;
  }
  return pos;
}
