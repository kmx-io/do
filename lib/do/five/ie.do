
module do.five.ie;

include {
  do.five.numbers;
  do.five.binary;
}

public:

class ie -> real;

type ie (unsigned bits, unsigned ease-bits, symbol endianness) {
  -> binary(bits);
  -> real(-2 ^ (bits - 1) - 1 + 1 / 2 ^ ease-bits,
           2 ^ (bits - 1) - 1 / 2 ^ ease-bits);
}

type ie (unsigned bits, unsigned ease-bits) ->
  ie(bits, ease-bits, ARCH_ENDIANNESS);

type ie (unsigned bits) -> ie(bits, bits / 3, ARCH_ENDIANNESS);

type ie -> ie(ARCH_BITS, ARCH_BITS / 3, ARCH_ENDIANNESS);

