package defpackage;

import android.os.Build.VERSION;

/* compiled from: Twttr */
/* renamed from: asi */
public class asi implements ash {
    boolean a;
    private final long[] b;
    private final asj c;
    private int d;
    private int e;
    private long f;

    asi(asj asj) {
        e();
        this.b = new long[30];
        this.c = asj;
    }

    public static asi a() {
        return new asi(asj.a());
    }

    public void b() {
        e();
        this.a = true;
        this.c.a(this);
    }

    public void c() {
        this.a = false;
        this.c.b(this);
    }

    public long d() {
        return this.d == 0 ? -1 : this.f / ((long) this.d);
    }

    void e() {
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.a = false;
    }

    public void a(long j) {
        if (this.a) {
            this.b[this.e % 30] = j;
            this.e++;
            if (this.e > 1 && this.e % 10 == 0) {
                this.d++;
                this.f += g();
            }
        }
    }

    public static boolean f() {
        return VERSION.SDK_INT >= 16;
    }

    private long g() {
        int i;
        int i2 = this.e;
        if (i2 < 30) {
            i = 0;
        } else {
            i = this.e % 30;
            i2 = 30;
        }
        return (((long) (i2 - 1)) * 1000000000) / (this.b[(this.e - 1) % 30] - this.b[i]);
    }
}
