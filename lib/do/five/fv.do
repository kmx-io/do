
module do.five.fv;

~ Other modules can be used with include, making all their public
~ statements direcly available in the current module.

include {
  do.five.numbers;
  do.five.binary;
}

public:

~ A type defines some binary representation of data.
~ All types are subtypes of binary(unsigned).
~ Types are also classes and are described using the same syntax.

type unsigned {
  symbol endianness = ARCH_ENDIANNESS;
  -> binary(ARCH_BITS);
  -> natural(0, 2 ^ ARCH_BITS - 1);
}

type binary (unsigned bits) -> binary;

unsigned sizeof (binary(unsigned bits)) {
  return bits;
}

type bit {
  -> binary(1);
  -> natural(0, 1);
}

~ Types can accept typed arguments.
~ The same name can be used for different types with different argument types.
~ Type arguments get evaluated using a dot (.) eg unsigned(3).bits = 3.

type unsigned (unsigned bits, symbol endianness) {
  -> binary(bits);
  -> natural(0, 2 ^ bits - 1);
}
type unsigned (unsigned bits) = unsigned(bits, ARCH_ENDIANNESS);

type signed (natural bits, symbol endianness) {
  -> binary(bits);
  -> relative(-2 ^ (bits - 1),
               2 ^ (bits - 1) - 1);
}
type signed (natural bits) = signed(bits, ARCH_ENDIANNESS);
type signed = signed(ARCH_BITS, ARCH_ENDIANNESS);

binary(unsigned bits) (binary(bits)) :% (signed);  ~ Binary rotation
binary(unsigned bits) (binary(bits)) :x (signed);  ~ Binary shift

~ Type aliases are identified with an equal sign (=).

type u8 = unsigned(8);
type u16 = unsigned(16);
type u24 = unsigned(24);
type u32 = unsigned(32);
type u64 = unsigned(64);
type u128 = unsigned(128);

type s8 = signed(8);
type s16 = signed(16);
type s24 = signed(24);
type s32 = signed(32);
type s64 = signed(64);
type s128 = signed(128);

~ Symbols are constants that evaluate to themselves, starting with a quote (').

type u8le = unsigned(8, 'little-endian);
type u16le = unsigned(16, 'little-endian);
type u24le = unsigned(24, 'little-endian);
type u32le = unsigned(32, 'little-endian);
type u64le = unsigned(64, 'little-endian);
type u128le = unsigned(128, 'little-endian);

type u8be = unsigned(8, 'big-endian);
type u16be = unsigned(16, 'big-endian);
type u24be = unsigned(24, 'big-endian);
type u32be = unsigned(32, 'big-endian);
type u64be = unsigned(64, 'big-endian);
type u128be = unsigned(128, 'big-endian);

type s8le = signed(8, 'little-endian);
type s16le = signed(16, 'little-endian);
type s24le = signed(24, 'little-endian);
type s32le = signed(32, 'little-endian);
type s64le = signed(64, 'little-endian);
type s128le = signed(128, 'little-endian);

type s8be = signed(8, 'big-endian);
type s16be = signed(16, 'big-endian);
type s24be = signed(24, 'big-endian);
type s32be = signed(32, 'big-endian);
type s64be = signed(64, 'big-endian);
type s128be = signed(128, 'big-endian);

~ Function prototypes bind argument types to each pattern.

bit ! (bit);
bit (binary(unsigned bits)) := (binary(bits));  ~ equality predicate

binary(bits) :- (binary(unsigned bits));                 ~ one complement
binary(bits) (binary(unsigned bits)) :^ (binary(bits));  ~ conjunction
binary(bits) (binary(unsigned bits)) :| (binary(bits));  ~ disjunction
binary(bits) (binary(unsigned bits)) :& (binary(bits));  ~ exclusion

bit (unsigned(unsigned bits, symbol endianness)) <
    (unsigned(bits, endianness));

bit (unsigned(unsigned bits, symbol endianness)) >
    (unsigned(bits, endianness));

unsigned(unsigned bits, symbol endianness)
  (unsigned(bits, endianness)) + (unsigned(bits, endianness));

unsigned(unsigned bits, symbol endianness)
  (unsigned(bits, endianness)) - (unsigned(bits, endianness));

unsigned(unsigned bits, symbol endianness)
  (unsigned(bits, endianness)) . (unsigned(bits, endianness));   ~ mul

unsigned(unsigned bits, symbol endianness)
  (unsigned(bits, endianness)) : (unsigned(bits, endianness));   ~ div

unsigned(unsigned bits, symbol endianness)
  (unsigned(bits, endianness)) % (unsigned(bits, endianness));   ~ mod

unsigned(unsigned bits, symbol endianness)
  (unsigned(bits, endianness)) .. (unsigned(bits, endianness));  ~ exp

unsigned(unsigned bits, symbol endianness)
  (unsigned(bits, endianness) :: (unsigned(bits, endianness));   ~ log

bit (signed(unsigned bits, symbol endianness)) <
    (signed(bits, endianness));

bit (signed(unsigned bits, symbol endianness)) >
    (signed(bits, endianness));

signed(unsigned bits, symbol endianness)
  (signed(bits, endianness)) + (signed(bits, endianness));

signed(unsigned bits, symbol endianness)
  (signed(bits, endianness)) - (signed(bits, endianness));

signed(unsigned bits, symbol endianness)
  (signed(bits, endianness)) . (signed(bits, endianness));

signed(unsigned bits, symbol endianness)
  (signed(bits, endianness)) : (signed(bits, endianness));

signed(unsigned bits, symbol endianness)
  (signed(bits, endianness)) % (signed(bits, endianness));

signed(unsigned bits, symbol endianness)
  (signed(bits, endianness)) .. (signed(bits, endianness));

signed(unsigned bits, symbol endianness)
  (signed(bits, endianness) :: (signed(bits, endianness));
