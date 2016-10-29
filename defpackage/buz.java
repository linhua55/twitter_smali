package defpackage;

import bvb;
import bvc;
import com.twitter.util.h;

/* compiled from: Twttr */
/* renamed from: buz */
public class buz {
    private static buz a;
    private final bvc b;

    public static buz a() {
        h.a();
        cqf.a(buz.class);
        if (a == null) {
            a = new buz(new bvb(null));
        }
        return a;
    }

    private buz(bvc bvc) {
        this.b = bvc;
    }

    public boolean b() {
        return this.b.b();
    }

    public boolean c() {
        return this.b.d();
    }

    public boolean d() {
        return this.b.c();
    }

    public boolean e() {
        return this.b.e();
    }
}
