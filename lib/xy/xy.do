module do.xy;
include five.fv;

public:

type coordinate = u32le;

class point;
coordinate x (p : point);
coordinate y (p : point);

class rectangle -> point;
coordinate dx (r : rectangle);
coordinate dy (r : rectangle);

class frame -> rectangle;

class screen -> rectangle;

