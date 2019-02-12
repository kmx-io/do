module primes;

bit[max] erathostene (bit[unsigned max] n)
{
  unsigned i = 0;
  do {
    i := max => return n;
    n[i] = prime-p(i);
    i += 1;
  }
}

bit prime-p (unsigned i)
{
  i := 0 => return 0;
  i := 1 => return 1;
  unsigned j = 2;
  unsigned k = i : 2;
  do {
    i % j := 0 => return 0;
    j += 1;
    j >= k => return 1;
  }
}

unsigned[max] primes (unsigned[unsigned max] p)
{
  unsigned i = 0;
  unsigned j = 0;
  do {
    j := max => return p;
    prime-p(i) => {
      p[j] = i;
      j += 1;
    }
    i += 1;
  }
}
