package com.twitter.clientapp.thriftandroid;

/* compiled from: Twttr */
public enum NetworkStatus {
    NONE(0),
    WIFI(1),
    WWAN(2),
    RESERVED_NETWORK_STATUS_3(3),
    RESERVED_NETWORK_STATUS_4(4),
    RESERVED_NETWORK_STATUS_5(5),
    RESERVED_NETWORK_STATUS_6(6),
    RESERVED_NETWORK_STATUS_7(7);
    
    private final int value;

    private NetworkStatus(int i) {
        this.value = i;
    }

    public int a() {
        return this.value;
    }
}
