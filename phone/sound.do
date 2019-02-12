
module phone.sound;

include phone;

type user-level = s32le;

type global-level = signed(user-id.bits . user-level.bits); ~ 48 . 32 = 1536

type clock = unsigned(48);

type earth-phone = unsigned(global-level.bits . clock.bits); ~ 1536 . 48 = 73728
                                                             ~                48
                                                             ~               24
                                                             ~              40
                                                             ~              8
                                                             ~               24
                                                             ~              12
                                                             ~             20
                                                             ~             4
