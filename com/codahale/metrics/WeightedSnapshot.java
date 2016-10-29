package com.codahale.metrics;

import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;

/* compiled from: Twttr */
public class WeightedSnapshot extends Snapshot {
    private static final Charset UTF_8;
    private final double[] normWeights;
    private final double[] quantiles;
    private final long[] values;

    /* compiled from: Twttr */
    public class WeightedSample {
        public final long value;
        public final double weight;

        public WeightedSample(long j, double d) {
            this.value = j;
            this.weight = d;
        }
    }

    static {
        UTF_8 = Charset.forName(Util.UTF_8);
    }

    public WeightedSnapshot(Collection<WeightedSample> collection) {
        int i = 0;
        WeightedSample[] weightedSampleArr = (WeightedSample[]) collection.toArray(new WeightedSample[0]);
        Arrays.sort(weightedSampleArr, new Comparator<WeightedSample>() {
            public int compare(WeightedSample weightedSample, WeightedSample weightedSample2) {
                if (weightedSample.value > weightedSample2.value) {
                    return 1;
                }
                if (weightedSample.value < weightedSample2.value) {
                    return -1;
                }
                return 0;
            }
        });
        this.values = new long[weightedSampleArr.length];
        this.normWeights = new double[weightedSampleArr.length];
        this.quantiles = new double[weightedSampleArr.length];
        double d = 0.0d;
        for (WeightedSample weightedSample : weightedSampleArr) {
            d += weightedSample.weight;
        }
        while (i < weightedSampleArr.length) {
            this.values[i] = weightedSampleArr[i].value;
            this.normWeights[i] = weightedSampleArr[i].weight / d;
            i++;
        }
        for (i = 1; i < weightedSampleArr.length; i++) {
            this.quantiles[i] = this.quantiles[i - 1] + this.normWeights[i - 1];
        }
    }

    public double getValue(double d) {
        if (d < 0.0d || d > 1.0d) {
            throw new IllegalArgumentException(d + " is not in [0..1]");
        } else if (this.values.length == 0) {
            return 0.0d;
        } else {
            int binarySearch = Arrays.binarySearch(this.quantiles, d);
            if (binarySearch < 0) {
                binarySearch = ((-binarySearch) - 1) - 1;
            }
            if (binarySearch < 1) {
                return (double) this.values[0];
            }
            if (binarySearch >= this.values.length) {
                return (double) this.values[this.values.length - 1];
            }
            return (double) this.values[binarySearch];
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
        double d = 0.0d;
        if (this.values.length != 0) {
            for (int i = 0; i < this.values.length; i++) {
                d += ((double) this.values[i]) * this.normWeights[i];
            }
        }
        return d;
    }

    public double getStdDev() {
        double d = 0.0d;
        if (this.values.length <= 1) {
            return 0.0d;
        }
        double mean = getMean();
        for (int i = 0; i < this.values.length; i++) {
            double d2 = ((double) this.values[i]) - mean;
            d += d2 * (this.normWeights[i] * d2);
        }
        return Math.sqrt(d);
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
