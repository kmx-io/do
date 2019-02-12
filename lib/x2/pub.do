
module x2.pub;

type lum = u16;

type rgb {
  lum r;
  lum g;
  lum b;
}

type rgba {
  lum r;
  lum g;
  lum b;
  lum a;
}

type x2 {
  unsigned top;
  unsigned left;
  unsigned width;
  unsigned height;
}

bit (x2 a) < (x2 b) {
  return (a.top < b.top) :^
         (a.left < b.left) :^
         (a.width < b.width) :^
         (a.height < b.height);
}

type screen {
  -> x2;
}

type root {
  x2* x2;
  rgb bg;
}
