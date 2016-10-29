package com.codahale.metrics;

import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;

/* compiled from: Twttr */
public class UniformSnapshot extends Snapshot {
    private static final Charset UTF_8;
    private final long[] values;

    static {
        UTF_8 = Charset.forName(Util.UTF_8);
    }

    public UniformSnapshot(Collection<Long> collection) {
        Object[] toArray = collection.toArray();
        this.values = new long[toArray.length];
        for (int i = 0; i < toArray.length; i++) {
            this.values[i] = ((Long) toArray[i]).longValue();
        }
        Arrays.sort(this.values);
    }

    public UniformSnapshot(long[] jArr) {
        this.values = Arrays.copyOf(jArr, jArr.length);
        Arrays.sort(this.values);
    }

    public double getValue(double d) {
        if (d < 0.0d || d > 1.0d) {
            throw new IllegalArgumentException(d + " is not in [0..1]");
        } else if (this.values.length == 0) {
            return 0.0d;
        } else {
            double length = ((double) (this.values.length + 1)) * d;
            if (length < 1.0d) {
                return (double) this.values[0];
            }
            if (length >= ((double) this.values.length)) {
                return (double) this.values[this.values.length - 1];
            }
            double d2 = (double) this.values[((int) length) - 1];
            return ((length - Math.floor(length)) * (((double) this.values[(int) length]) - d2)) + d2;
        }
    }

    public int size() {
        return this.values.length;
    }

    public long[] getValues() {
        return Arrays.copyOf(this.values, this.values.length);
    }

    public long getMax() {
        if (this.values.length == 0) {
            return 0;
        }
        return this.values[this.values.length - 1];
    }

    public long getMin() {
        if (this.values.length == 0) {
            return 0;
        }
        return this.values[0];
    }

    public double getMean() {
        if (this.values.length == 0) {
            return 0.0d;
        }
        double d = 0.0d;
        for (long j : this.values) {
            d += (double) j;
        }
        return d / ((double) this.values.length);
    }

    public double getStdDev() {
        if (this.values.length <= 1) {
            return 0.0d;
        }
        double mean = getMean();
        double d = 0.0d;
        for (long j : this.values) {
            double d2 = ((double) j) - mean;
            d += d2 * d2;
        }
        return Math.sqrt(d / ((double) (this.values.length - 1)));
    }

    public void dump(OutputStream outputStream) {
        PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(outputStream, UTF_8));
        try {
            int length = this.values.length;
            for (int i = 0; i < length; i++) {
                printWriter.printf("%d%n", new Object[]{Long.valueOf(r2[i])});
            }
        } finally {
            printWriter.close();
        }
    }
}
