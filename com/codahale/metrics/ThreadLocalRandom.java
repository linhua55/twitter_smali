package com.codahale.metrics;

import java.util.Random;

/* compiled from: Twttr */
class ThreadLocalRandom extends Random {
    private static final long addend = 11;
    private static final ThreadLocal<ThreadLocalRandom> localRandom;
    private static final long mask = 281474976710655L;
    private static final long multiplier = 25214903917L;
    private static final long serialVersionUID = -5851777807851030925L;
    boolean initialized;
    private long pad0;
    private long pad1;
    private long pad2;
    private long pad3;
    private long pad4;
    private long pad5;
    private long pad6;
    private long pad7;
    private long rnd;

    static {
        localRandom = new ThreadLocal<ThreadLocalRandom>() {
            protected ThreadLocalRandom initialValue() {
                return new ThreadLocalRandom();
            }
        };
    }

    ThreadLocalRandom() {
        this.initialized = true;
    }

    public static ThreadLocalRandom current() {
        return (ThreadLocalRandom) localRandom.get();
    }

    public void setSeed(long j) {
        if (this.initialized) {
            throw new UnsupportedOperationException();
        }
        this.rnd = (multiplier ^ j) & mask;
    }

    protected int next(int i) {
        this.rnd = ((this.rnd * multiplier) + addend) & mask;
        return (int) (this.rnd >>> (48 - i));
    }

    public int nextInt(int i, int i2) {
        if (i < i2) {
            return nextInt(i2 - i) + i;
        }
        throw new IllegalArgumentException();
    }

    public long nextLong(long j) {
        long j2 = 0;
        if (j <= 0) {
            throw new IllegalArgumentException("n must be positive");
        }
        while (j >= 2147483647L) {
            int next = next(2);
            long j3 = j >>> 1;
            if ((next & 2) != 0) {
                j3 = j - j3;
            }
            if ((next & 1) == 0) {
                j2 += j - j3;
            }
            j = j3;
        }
        return j2 + ((long) nextInt((int) j));
    }

    public long nextLong(long j, long j2) {
        if (j < j2) {
            return nextLong(j2 - j) + j;
        }
        throw new IllegalArgumentException();
    }

    public double nextDouble(double d) {
        if (d > 0.0d) {
            return nextDouble() * d;
        }
        throw new IllegalArgumentException("n must be positive");
    }

    public double nextDouble(double d, double d2) {
        if (d < d2) {
            return (nextDouble() * (d2 - d)) + d;
        }
        throw new IllegalArgumentException();
    }
}
