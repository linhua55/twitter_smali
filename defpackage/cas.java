package defpackage;

import cmb;

/* compiled from: Twttr */
/* renamed from: cas */
public class cas implements bzg {
    private final bzy<bzg, byx<cmb>> a;
    private final byu b;
    private final long c;
    private final cat d;

    public cas(bzy<bzg, byx<cmb>> bzy_bzg__byx_cmb, byu byu, long j, cat cat) {
        this.a = bzy_bzg__byx_cmb;
        this.b = byu;
        this.c = j;
        this.d = cat;
    }

    public void a() {
        this.a.a(this.c, this);
    }

    public void b() {
        this.a.b(this.c, this);
    }

    public int a(String str, byw byw) {
        return this.b.a(this.c, str, byw);
    }

    public int b(String str, byw byw) {
        return this.b.b(this.c, str, byw);
    }

    public void c() {
        this.b.a();
    }

    public void a(long j, int i, cmb cmb) {
        if (j == this.c) {
            this.d.a(i, cmb);
        } else {
            throw new IllegalArgumentException(String.format("apiResponseKey %s does not match expected mApiResponseKey %s", new Object[]{Long.valueOf(j), Long.valueOf(this.c)}));
        }
    }

    public void a(long j, int i) {
        if (j == this.c) {
            this.d.a(i);
        } else {
            throw new IllegalArgumentException(String.format("apiResponseKey %s does not match expected mApiResponseKey %s", new Object[]{Long.valueOf(j), Long.valueOf(this.c)}));
        }
    }
}
