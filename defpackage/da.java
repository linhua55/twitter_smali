package defpackage;

import com.facebook.datasource.c;
import com.facebook.datasource.d;
import cz;

/* compiled from: Twttr */
/* renamed from: da */
class da extends c<T> {
    final /* synthetic */ String a;
    final /* synthetic */ boolean b;
    final /* synthetic */ cz c;

    da(cz czVar, String str, boolean z) {
        this.c = czVar;
        this.a = str;
        this.b = z;
    }

    public void e(d<T> dVar) {
        boolean b = dVar.b();
        float g = dVar.g();
        Object d = dVar.d();
        if (d != null) {
            cz.a(this.c, this.a, dVar, d, g, b, this.b);
        } else if (b) {
            cz.a(this.c, this.a, dVar, new NullPointerException(), true);
        }
    }

    public void f(d<T> dVar) {
        cz.a(this.c, this.a, dVar, dVar.f(), true);
    }

    public void d(d<T> dVar) {
        boolean b = dVar.b();
        cz.a(this.c, this.a, dVar, dVar.g(), b);
    }
}
