package com.twitter.clientapp.thriftandroid;

/* compiled from: Twttr */
public enum RadioStatus {
    UNKNOWN(0),
    GPRS(1),
    EDGE(2),
    UMTS(3),
    HSDPA(4),
    HSUPA(5),
    HSPA(6),
    CDMA(7),
    EVDO_0(8),
    EVDO_A(9),
    EVDO_B(10),
    ONExRTT(11),
    IDEN(12),
    LTE(13),
    EHRPD(14),
    HSPAP(15),
    RESERVED_KEY_16(16),
    RESERVED_KEY_17(17),
    RESERVED_KEY_18(18),
    RESERVED_KEY_19(19),
    RESERVED_KEY_20(20),
    RESERVED_KEY_21(21),
    RESERVED_KEY_22(22),
    RESERVED_KEY_23(23),
    RESERVED_KEY_24(24),
    RESERVED_KEY_25(25);
    
    private final int value;

    private RadioStatus(int i) {
        this.value = i;
    }

    public int a() {
        return this.value;
    }
}
