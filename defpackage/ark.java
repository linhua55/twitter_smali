package defpackage;

import arl;
import arm;
import arn;
import com.twitter.platform.PlatformContext;

/* compiled from: Twttr */
/* renamed from: ark */
public class ark {
    public static final arp l;
    public static final arp m;
    public static final arp n;
    protected String o;
    protected String p;
    protected String q;
    protected arp r;
    protected long s;
    protected long t;
    protected long u;
    protected Long v;

    static {
        l = new arl();
        m = new arm();
        n = new arn();
    }

    public ark(String str, arp arp) {
        this(str, arp, 0);
    }

    public ark(String str, arp arp, long j) {
        this.o = str;
        this.r = arp;
        this.t = j;
        this.u = 0;
        this.p = "PerfMetric";
    }

    public synchronized void i() {
        this.u = z();
    }

    public synchronized void j() {
        this.t = z() - this.u;
    }

    public String t() {
        return this.q;
    }

    public Long d() {
        return this.v;
    }

    public long u() {
        return this.t;
    }

    public String a() {
        return this.o;
    }

    public String v() {
        return this.p;
    }

    public arp w() {
        return this.r;
    }

    public long x() {
        return this.s;
    }

    public void b(long j) {
        this.s = j;
    }

    public void b(String str) {
        this.p = str;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(this.o + " duration=" + this.t);
        String str = this.o + " duration=" + this.t;
        if (this.v != null) {
            stringBuilder.append(" value=" + this.v);
        }
        if (this.q != null) {
            stringBuilder.append(" metadata=" + this.q);
        }
        return str;
    }

    protected long y() {
        return PlatformContext.f().a().a();
    }

    protected long z() {
        return PlatformContext.f().a().b();
    }
}
