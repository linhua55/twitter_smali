package com.codahale.metrics;

import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* compiled from: Twttr */
public class UniformReservoir implements Reservoir {
    private static final int BITS_PER_LONG = 63;
    private static final int DEFAULT_SIZE = 1028;
    private final AtomicLong count;
    private final AtomicLongArray values;

    public UniformReservoir() {
        this(DEFAULT_SIZE);
    }

    public UniformReservoir(int i) {
        this.count = new AtomicLong();
        this.values = new AtomicLongArray(i);
        for (int i2 = 0; i2 < this.values.length(); i2++) {
            this.values.set(i2, 0);
        }
        this.count.set(0);
    }

    public int size() {
        long j = this.count.get();
        if (j > ((long) this.values.length())) {
            return this.values.length();
        }
        return (int) j;
    }

    public void update(long j) {
        long incrementAndGet = this.count.incrementAndGet();
        if (incrementAndGet <= ((long) this.values.length())) {
            this.values.set(((int) incrementAndGet) - 1, j);
            return;
        }
        incrementAndGet = nextLong(incrementAndGet);
        if (incrementAndGet < ((long) this.values.length())) {
            this.values.set((int) incrementAndGet, j);
        }
    }

    private static long nextLong(long j) {
        long j2;
        long nextLong;
        do {
            nextLong = ThreadLocalRandom.current().nextLong() & PtsTimestampAdjuster.DO_NOT_OFFSET;
            j2 = nextLong % j;
        } while ((nextLong - j2) + (j - 1) < 0);
        return j2;
    }

    public Snapshot getSnapshot() {
        int size = size();
        Collection arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(Long.valueOf(this.values.get(i)));
        }
        return new UniformSnapshot(arrayList);
    }
}
