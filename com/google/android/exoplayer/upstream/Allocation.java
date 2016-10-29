package com.google.android.exoplayer.upstream;

/* compiled from: Twttr */
public final class Allocation {
    public final byte[] data;
    private final int offset;

    public Allocation(byte[] bArr, int i) {
        this.data = bArr;
        this.offset = i;
    }

    public int translateOffset(int i) {
        return this.offset + i;
    }
}
