package defpackage;

import com.twitter.config.d;

/* compiled from: Twttr */
/* renamed from: buu */
public class buu extends bvf {
    private static final buu a;
    private boolean b;

    static {
        a = new buu();
    }

    public static buu b() {
        return a;
    }

    protected void f() {
        this.b = d.a("ranked_timeline_visual_indicators");
    }

    public boolean c() {
        return this.b;
    }
}
