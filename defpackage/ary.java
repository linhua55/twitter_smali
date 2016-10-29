package defpackage;

import android.content.Context;
import android.os.Handler;
import arr;
import arz;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: ary */
public abstract class ary extends arj implements ars {
    private final int a;
    private final Handler b;
    private final Runnable c;

    protected ary(Context context, String str, arp arp, String str2, arq arq, boolean z, int i) {
        this(context, str, arp, str2, arq, z, i, 0);
    }

    protected ary(Context context, String str, arp arp, String str2, arq arq, boolean z, int i, long j) {
        super(str, arp, str2, arq, z);
        this.c = new arz(this);
        this.b = new Handler(context.getMainLooper());
        this.a = i;
        if (this.a < 1 || this.a > 3) {
            throw new IllegalStateException("Invalid reporting interval, please see PeriodicMetric for valid intervals.");
        }
        this.s = j;
        arr.a(this);
        A();
    }

    protected int g() {
        switch (this.a) {
            case WireMessage.WIRE_CHAT /*1*/:
                return arr.a().d;
            case WireMessage.WIRE_CONTROL /*2*/:
                return arr.a().e;
            default:
                return arr.a().f;
        }
    }

    protected void s() {
        super.s();
        B();
    }

    protected void A() {
        B();
        if (!this.i) {
            long g = (long) g();
            long y = y();
            long j = (this.h == 0 ? y : this.h) + g;
            if (this.h > y || y - j >= 7 * g) {
                this.h = 0;
                p();
                c(g);
                return;
            }
            if (this.h == 0) {
                this.h = y - 1;
            }
            if (j > y) {
                j -= y;
            } else {
                if (r()) {
                    boolean l = l();
                    if (l) {
                        j();
                    }
                    this.t = g;
                    o();
                    if (l) {
                        i();
                    }
                }
                j = g - ((y - j) % g);
            }
            this.u = y - (g - j);
            c(j);
        }
    }

    public long u() {
        if (l()) {
            return (this.t + y()) - this.u;
        }
        return this.t;
    }

    protected boolean h() {
        return false;
    }

    public void aN_() {
        A();
    }

    protected void B() {
        this.b.removeCallbacks(this.c);
    }

    protected void c(long j) {
        this.b.postDelayed(this.c, j);
    }
}
