package com.twitter.common_header.thriftandroid;

/* compiled from: Twttr */
public enum IdType {
    USER_ID(1),
    GUEST_ID(2),
    DEVICE_ID(3);
    
    private final int value;

    private IdType(int i) {
        this.value = i;
    }

    public int a() {
        return this.value;
    }
}
