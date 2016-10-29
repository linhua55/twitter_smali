package tv.periscope.model;

import java.util.ArrayList;

/* compiled from: Twttr */
public abstract class p {
    private long a;
    private BroadcastState b;
    private boolean c;
    private boolean d;
    private int e;
    private int f;

    public abstract long a();

    public abstract long b();

    public abstract String c();

    public abstract String d();

    public abstract z e();

    public abstract long f();

    public abstract boolean g();

    public abstract String h();

    public abstract String i();

    public abstract String j();

    public abstract long k();

    public abstract long l();

    public abstract double m();

    public abstract double n();

    public abstract String o();

    public abstract boolean p();

    public abstract String q();

    public abstract String r();

    public abstract String s();

    public abstract String t();

    public abstract String u();

    public abstract boolean v();

    public abstract ArrayList<String> w();

    public abstract ArrayList<String> x();

    public abstract ArrayList<String> y();

    public void a(int i) {
        this.f = i;
    }

    p() {
        this.a = 0;
        this.b = BroadcastState.Ended;
    }

    public static q z() {
        return new c().a(z.a).a(false).c(null).d(null).e(null).d(0).c(0).e(0).b(0.0d).a(0.0d).b(false).c(false).a(null).b(null).b(0).a(0).c(null);
    }

    public long A() {
        return this.a;
    }

    public void a(long j) {
        this.a = j;
    }

    public BroadcastState B() {
        return this.b;
    }

    public void a(BroadcastState broadcastState) {
        this.b = broadcastState;
    }

    public boolean C() {
        return B() == BroadcastState.Running;
    }

    public boolean D() {
        BroadcastState B = B();
        return B == BroadcastState.Ended || B == BroadcastState.TimedOut;
    }

    public boolean E() {
        return this.c;
    }

    public void a(boolean z) {
        this.c = z;
    }

    public void b(boolean z) {
        this.d = z;
    }

    public void b(int i) {
        this.e = i;
    }
}
