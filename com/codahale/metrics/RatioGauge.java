package com.codahale.metrics;

/* compiled from: Twttr */
public abstract class RatioGauge implements Gauge<Double> {

    /* compiled from: Twttr */
    public class Ratio {
        private final double denominator;
        private final double numerator;

        public static Ratio of(double d, double d2) {
            return new Ratio(d, d2);
        }

        private Ratio(double d, double d2) {
            this.numerator = d;
            this.denominator = d2;
        }

        public double getValue() {
            double d = this.denominator;
            if (Double.isNaN(d) || Double.isInfinite(d) || d == 0.0d) {
                return Double.NaN;
            }
            return this.numerator / d;
        }

        public String toString() {
            return this.numerator + ":" + this.denominator;
        }
    }

    protected abstract Ratio getRatio();

    public Double getValue() {
        return Double.valueOf(getRatio().getValue());
    }
}
