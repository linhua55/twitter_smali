package defpackage;

import android.net.Uri;
import android.os.Build.VERSION;
import bx;
import ce;
import com.facebook.common.references.a;
import com.facebook.common.util.d;
import com.facebook.imagepipeline.producers.bj;
import com.facebook.imagepipeline.producers.bw;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: ft */
public class ft {
    bw<a<gh>> a;
    bw<a<gh>> b;
    bw<a<gh>> c;
    bw<a<gh>> d;
    bw<a<gh>> e;
    bw<a<gh>> f;
    bw<a<gh>> g;
    Map<bw<a<gh>>, bw<a<gh>>> h;
    Map<bw<a<gh>>, bw<Void>> i;
    private final fs j;
    private final bj k;
    private final boolean l;
    private final boolean m;
    private bw<gj> n;

    public ft(fs fsVar, bj bjVar, boolean z, boolean z2) {
        this.j = fsVar;
        this.k = bjVar;
        this.l = z;
        this.m = z2;
        this.h = new HashMap();
        this.i = new HashMap();
    }

    public bw<a<gh>> a(ImageRequest imageRequest) {
        bw<a<gh>> b = b(imageRequest);
        if (imageRequest.n() != null) {
            return f(b);
        }
        return b;
    }

    private bw<a<gh>> b(ImageRequest imageRequest) {
        bx.a(imageRequest);
        Uri b = imageRequest.b();
        bx.a(b, "Uri is null.");
        if (d.a(b)) {
            return a();
        }
        if (d.b(b)) {
            if (ce.a(ce.b(b.getPath()))) {
                return d();
            }
            return c();
        } else if (d.c(b)) {
            return e();
        } else {
            if (d.d(b)) {
                return g();
            }
            if (d.e(b)) {
                return f();
            }
            if (d.f(b)) {
                return h();
            }
            String uri = b.toString();
            if (uri.length() > 30) {
                uri = uri.substring(0, 30) + "...";
            }
            throw new RuntimeException("Unsupported uri scheme! Uri is: " + uri);
        }
    }

    private synchronized bw<a<gh>> a() {
        if (this.a == null) {
            this.a = b(b());
        }
        return this.a;
    }

    private synchronized bw<gj> b() {
        if (this.n == null) {
            this.n = fs.a(c(this.j.a(this.k)));
            if (this.l && !this.m) {
                this.n = this.j.k(this.n);
            }
        }
        return this.n;
    }

    private synchronized bw<a<gh>> c() {
        if (this.b == null) {
            this.b = a(this.j.e());
        }
        return this.b;
    }

    private synchronized bw<a<gh>> d() {
        if (this.c == null) {
            this.c = d(this.j.g());
        }
        return this.c;
    }

    private synchronized bw<a<gh>> e() {
        if (this.d == null) {
            this.d = a(this.j.c());
        }
        return this.d;
    }

    private synchronized bw<a<gh>> f() {
        if (this.e == null) {
            this.e = a(this.j.f());
        }
        return this.e;
    }

    private synchronized bw<a<gh>> g() {
        if (this.f == null) {
            this.f = a(this.j.b());
        }
        return this.f;
    }

    private synchronized bw<a<gh>> h() {
        if (this.g == null) {
            bw a = this.j.a();
            if (VERSION.SDK_INT < 18) {
                a = this.j.m(a);
            }
            fs fsVar = this.j;
            a = fs.a(a);
            if (!this.m) {
                a = this.j.k(a);
            }
            this.g = b(a);
        }
        return this.g;
    }

    private bw<a<gh>> a(bw<gj> bwVar) {
        return b(e(c(bwVar)));
    }

    private bw<a<gh>> b(bw<gj> bwVar) {
        return d(this.j.e(bwVar));
    }

    private bw<gj> c(bw<gj> bwVar) {
        if (VERSION.SDK_INT < 18) {
            bwVar = this.j.m(bwVar);
        }
        return this.j.g(this.j.h(this.j.f(bwVar)));
    }

    private bw<a<gh>> d(bw<a<gh>> bwVar) {
        return this.j.b(this.j.l(this.j.c(this.j.d(bwVar))));
    }

    private bw<gj> e(bw<gj> bwVar) {
        fs fsVar = this.j;
        bw a = fs.a((bw) bwVar);
        if (!this.m) {
            a = this.j.k(a);
        }
        bw a2 = this.j.a(5, a);
        a = this.j.d();
        if (!this.m) {
            a = this.j.k(a);
        }
        fs fsVar2 = this.j;
        return fs.a(a, a2);
    }

    private synchronized bw<a<gh>> f(bw<a<gh>> bwVar) {
        if (!this.h.containsKey(bwVar)) {
            this.h.put(bwVar, this.j.i(this.j.j(bwVar)));
        }
        return (bw) this.h.get(bwVar);
    }
}
