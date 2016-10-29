package com.twitter.client_network.thriftandroid;

/* compiled from: Twttr */
public enum ClientNetworkResponseSource {
    ORIGIN(0),
    CDN(1),
    CDN_UNKNOWN(2),
    LOCAL_CACHE(3),
    PUSH(4),
    RESERVED05(5),
    RESERVED06(6),
    RESERVED07(7),
    RESERVED08(8),
    RESERVED09(9);
    
    private final int value;

    private ClientNetworkResponseSource(int i) {
        this.value = i;
    }

    public int a() {
        return this.value;
    }
}
