package defpackage;

import caw;
import cmb;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: byy */
public class byy implements cba {
    private final String a;
    private final String b;
    private caz c;
    private boolean d;

    public static byy a(String str, String str2, cmb cmb) {
        return new byy(caw.a(str, cmb), caw.a(str2, cmb));
    }

    private byy(String str, String str2) {
        this.d = false;
        this.a = str;
        this.b = str2;
        if (aj.b(str)) {
            this.c = cbb.a().b();
            this.c.a((cba) this);
            this.c.a(str);
        }
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public synchronized boolean c() {
        return this.d;
    }

    public synchronized void a(String str, boolean z) {
        this.c.b(this);
        this.c = null;
        this.d = z;
    }
}
