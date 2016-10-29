package com.twitter.clientapp.thriftandroid;

/* compiled from: Twttr */
public enum Orientation {
    PORTRAIT(1),
    LANDSCAPE(2);
    
    private final int value;

    private Orientation(int i) {
        this.value = i;
    }

    public int a() {
        return this.value;
    }
}
