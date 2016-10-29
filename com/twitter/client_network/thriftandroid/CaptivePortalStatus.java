package com.twitter.client_network.thriftandroid;

/* compiled from: Twttr */
public enum CaptivePortalStatus {
    UNKNOWN(0),
    YES(1),
    NO(2);
    
    private final int value;

    private CaptivePortalStatus(int i) {
        this.value = i;
    }

    public int a() {
        return this.value;
    }
}
