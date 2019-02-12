
module do.ipc;

type datagram {
  u32      uvt;  ~ :-
  s32      cml;
  u32      rmln; ~ estimate
  u8[4096] pl;
}
