package com.google.android.exoplayer.util;

import java.util.Arrays;

/* compiled from: Twttr */
public final class LongArray {
    private static final int DEFAULT_INITIAL_CAPACITY = 32;
    private int size;
    private long[] values;

    public LongArray() {
        this(DEFAULT_INITIAL_CAPACITY);
    }

    public LongArray(int i) {
        this.values = new long[i];
    }

    public void add(long j) {
        if (this.size == this.values.length) {
            this.values = Arrays.copyOf(this.values, this.size * 2);
        }
        long[] jArr = this.values;
        int i = this.size;
        this.size = i + 1;
        jArr[i] = j;
    }

    public long get(int i) {
        if (i >= 0 && i < this.size) {
            return this.values[i];
        }
        throw new IndexOutOfBoundsException("Invalid size " + i + ", size is " + this.size);
    }

    public int size() {
        return this.size;
    }

    public long[] toArray() {
        return Arrays.copyOf(this.values, this.size);
    }
}
