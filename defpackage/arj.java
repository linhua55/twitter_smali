package defpackage;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

/* compiled from: Twttr */
/* renamed from: arj */
public abstract class arj extends ark {
    private boolean a;
    private final arq b;
    protected final long f;
    protected final String g;
    protected long h;
    protected boolean i;
    boolean j;
    boolean k;

    public arj(String str, arp arp, String str2, arq arq) {
        this(str, arp, str2, arq, false);
    }

    public arj(String str, arp arp, String str2, arq arq, boolean z) {
        super(str, arp);
        this.p = getClass().getSimpleName();
        this.g = str2;
        this.f = z();
        this.b = arq;
        this.j = z;
        this.i = false;
        if (z && arq != null) {
            a(arq.a());
        }
    }

    protected boolean h() {
        return true;
    }

    public synchronized void i() {
        if (this.i) {
            cfb.e("MetricsManager", "attempting to start a metric which has already been destroyed");
        }
        if (!this.i && (!this.a || h())) {
            this.a = true;
            this.u = y();
            b();
        }
    }

    public final synchronized void j() {
        if (this.a) {
            this.t += y() - this.u;
            c();
            this.a = false;
        }
    }

    public final synchronized void k() {
        s();
        n();
    }

    public final boolean l() {
        return this.a;
    }

    public final boolean m() {
        return this.i;
    }

    protected final void n() {
        this.i = true;
        if (this.b != null) {
            this.b.b(this);
        }
    }

    protected final void o() {
        if (this.b != null) {
            this.h = y();
            this.b.a(this);
        }
    }

    protected final void p() {
        if (this.a) {
            this.u = y();
        } else {
            this.u = 0;
        }
        this.t = 0;
        this.k = false;
        e();
    }

    protected final void q() {
        if (this.b != null) {
            this.b.c(this);
        }
    }

    public final void b(boolean z) {
        this.k = z;
    }

    public boolean r() {
        return this.k;
    }

    protected void a(Editor editor) {
        editor.putLong(a("starttime"), this.u);
        editor.putBoolean(a("measuring"), this.a);
        editor.putLong(a("duration"), this.t);
        editor.putBoolean(a("ready"), this.k);
        editor.putLong(a("last_report"), this.h);
    }

    protected void b(Editor editor) {
        editor.remove(a("starttime"));
        editor.remove(a("measuring"));
        editor.remove(a("duration"));
        editor.remove(a("ready"));
        editor.remove(a("last_report"));
    }

    protected void a(SharedPreferences sharedPreferences) {
        this.u = sharedPreferences.getLong(a("starttime"), 0);
        this.a = sharedPreferences.getBoolean(a("measuring"), false);
        this.t = sharedPreferences.getLong(a("duration"), 0);
        this.k = sharedPreferences.getBoolean(a("ready"), false);
        this.h = sharedPreferences.getLong(a("last_report"), 0);
    }

    protected String a(String str) {
        return this.g + "_" + str;
    }

    protected void b() {
    }

    protected void c() {
    }

    protected void s() {
    }

    protected void e() {
    }

    protected static String a(String str, String str2) {
        return str + str2;
    }
}
