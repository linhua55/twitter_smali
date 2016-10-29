package defpackage;

/* compiled from: Twttr */
/* renamed from: cwt */
public class cwt {
    private final int a;
    private final cwp b;
    private final cws c;

    public cwt(cwp cwp, cws cws) {
        this(0, cwp, cws);
    }

    public cwt(int i, cwp cwp, cws cws) {
        this.a = i;
        this.b = cwp;
        this.c = cws;
    }

    public long a() {
        return this.b.a(this.a);
    }

    public cwt b() {
        return new cwt(this.a + 1, this.b, this.c);
    }

    public cwt c() {
        return new cwt(this.b, this.c);
    }
}
