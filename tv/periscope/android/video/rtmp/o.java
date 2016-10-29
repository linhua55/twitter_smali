package tv.periscope.android.video.rtmp;

import java.text.DecimalFormat;

/* compiled from: Twttr */
public class o {
    private int a;
    private double b;
    private double c;
    private double d;
    private double e;

    public o() {
        this.a = 0;
        this.b = 0.0d;
        this.c = 0.0d;
        this.d = 0.0d;
        this.e = 0.0d;
    }

    public double a() {
        return this.b;
    }

    public double b() {
        return this.c;
    }

    public double c() {
        if (this.a > 0) {
            return this.d / ((double) this.a);
        }
        return 0.0d;
    }

    public double d() {
        if (this.a > 1) {
            return Math.sqrt((this.e - ((this.d * this.d) / ((double) this.a))) / ((double) (this.a - 1)));
        }
        return 0.0d;
    }

    public void a(double d) {
        this.a++;
        this.d += d;
        this.e += d * d;
        if (d > this.c) {
            this.c = d;
        }
        if (this.a == 0 || d < this.b) {
            this.b = d;
        }
    }

    public String toString() {
        DecimalFormat decimalFormat = new DecimalFormat("0.###");
        return "Mean " + decimalFormat.format(c()) + " StdDev " + decimalFormat.format(d()) + " Min " + decimalFormat.format(a()) + " Max " + decimalFormat.format(b());
    }
}
