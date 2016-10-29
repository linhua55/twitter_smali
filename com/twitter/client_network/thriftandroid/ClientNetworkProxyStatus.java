package com.twitter.client_network.thriftandroid;

/* compiled from: Twttr */
public enum ClientNetworkProxyStatus {
    NONE(0),
    MANUAL(1),
    MANUAL_INVALID(2),
    MANUAL_WITHAUTH(3),
    AUTO(4),
    AUTO_INVALID(5),
    AUTO_WITHAUTH(6),
    CONFIG(7),
    CONFIG_WITHAUTH(8),
    RESERVED09(9),
    RESERVED10(10),
    RESERVED11(11),
    RESERVED12(12),
    RESERVED13(13),
    RESERVED14(14),
    RESERVED15(15);
    
    private final int value;

    private ClientNetworkProxyStatus(int i) {
        this.value = i;
    }

    public int a() {
        return this.value;
    }
}
