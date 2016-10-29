package com.codahale.metrics;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* compiled from: Twttr */
class LongAdder extends Striped64 implements Serializable {
    private static final long serialVersionUID = 7249069246863182397L;

    final long fn(long j, long j2) {
        return j + j2;
    }

    LongAdder() {
    }

    public void add(long j) {
        long j2;
        boolean z = true;
        Cell[] cellArr = this.cells;
        if (cellArr == null) {
            j2 = this.base;
            if (casBase(j2, j2 + j)) {
                return;
            }
        }
        HashCode hashCode = (HashCode) threadHashCode.get();
        int i = hashCode.code;
        if (cellArr != null) {
            int length = cellArr.length;
            if (length >= 1) {
                Cell cell = cellArr[i & (length - 1)];
                if (cell != null) {
                    j2 = cell.value;
                    z = cell.cas(j2, j2 + j);
                    if (z) {
                        return;
                    }
                }
            }
        }
        retryUpdate(j, hashCode, z);
    }

    public void increment() {
        add(1);
    }

    public void decrement() {
        add(-1);
    }

    public long sum() {
        long j = this.base;
        Cell[] cellArr = this.cells;
        if (cellArr != null) {
            for (Cell cell : cellArr) {
                if (cell != null) {
                    j += cell.value;
                }
            }
        }
        return j;
    }

    public void reset() {
        internalReset(0);
    }

    public long sumThenReset() {
        long j = this.base;
        Cell[] cellArr = this.cells;
        this.base = 0;
        if (cellArr != null) {
            for (Cell cell : cellArr) {
                if (cell != null) {
                    j += cell.value;
                    cell.value = 0;
                }
            }
        }
        return j;
    }

    public String toString() {
        return Long.toString(sum());
    }

    public long longValue() {
        return sum();
    }

    public int intValue() {
        return (int) sum();
    }

    public float floatValue() {
        return (float) sum();
    }

    public double doubleValue() {
        return (double) sum();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(sum());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.busy = 0;
        this.cells = null;
        this.base = objectInputStream.readLong();
    }
}
