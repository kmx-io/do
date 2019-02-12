
module x2.pub.wnd;

include x2.pub;

type wnd {
  -> x2;
  screen* screen;
}

bit ev (wnd* w, x2* x2) {
  w.screen < x2 => return 1;
  w.x2 = x2;
  return 0;
}
