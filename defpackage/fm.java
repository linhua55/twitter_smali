package defpackage;

import android.app.ActivityManager;
import android.os.Build.VERSION;
import bg;
import bm;
import bx;
import cm;
import com.facebook.cache.common.a;
import com.facebook.cache.disk.k;
import com.facebook.cache.disk.n;
import com.facebook.imagepipeline.bitmaps.b;
import com.facebook.imagepipeline.bitmaps.d;
import com.facebook.imagepipeline.bitmaps.e;
import com.facebook.imagepipeline.bitmaps.g;
import com.facebook.imagepipeline.memory.PooledByteBuffer;
import com.facebook.imagepipeline.memory.x;
import ei;
import ew;
import fi;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
/* compiled from: Twttr */
/* renamed from: fm */
public class fm {
    private static fm a;
    private final fi b;
    private dt c;
    private do d;
    private dq e;
    private ei<a, gh> f;
    private ew<a, gh> g;
    private ei<a, PooledByteBuffer> h;
    private ew<a, PooledByteBuffer> i;
    private eb j;
    private n k;
    private fx l;
    private fg m;
    private g n;
    private fs o;
    private ft p;
    private eb q;
    private n r;

    static {
        a = null;
    }

    public static fm a() {
        return (fm) bx.a(a, "ImagePipelineFactory was not initialized!");
    }

    public static void a(fi fiVar) {
        a = new fm(fiVar);
    }

    public fm(fi fiVar) {
        this.b = (fi) bx.a(fiVar);
    }

    private dt j() {
        if (this.c == null) {
            this.c = new dt();
        }
        return this.c;
    }

    public static dq a(dt dtVar, g gVar) {
        return new dq(new fn(dtVar), gVar);
    }

    private dq k() {
        if (this.e == null) {
            if (this.b.a() != null) {
                this.e = this.b.a();
            } else {
                this.e = fm.a(j(), n());
            }
        }
        return this.e;
    }

    public ei<a, gh> b() {
        if (this.f == null) {
            this.f = du.a(this.b.b(), this.b.k());
        }
        return this.f;
    }

    public ew<a, gh> c() {
        if (this.g == null) {
            this.g = dw.a(b(), this.b.g());
        }
        return this.g;
    }

    public ei<a, PooledByteBuffer> d() {
        if (this.h == null) {
            this.h = eq.a(this.b.e(), this.b.k());
        }
        return this.h;
    }

    public ew<a, PooledByteBuffer> e() {
        if (this.i == null) {
            this.i = es.a(d(), this.b.g());
        }
        return this.i;
    }

    private fx l() {
        if (this.l == null) {
            if (this.b.h() != null) {
                this.l = this.b.h();
            } else {
                this.l = new fx(k(), n());
            }
        }
        return this.l;
    }

    private eb m() {
        if (this.j == null) {
            this.j = new eb(f(), this.b.n().e(), this.b.n().f(), this.b.f().a(), this.b.f().b(), this.b.g());
        }
        return this.j;
    }

    public n f() {
        if (this.k == null) {
            this.k = k.a(this.b.j());
        }
        return this.k;
    }

    public fg g() {
        if (this.m == null) {
            this.m = new fg(p(), this.b.p(), this.b.i(), c(), e(), m(), q(), this.b.c());
        }
        return this.m;
    }

    public static g a(x xVar) {
        com.facebook.imagepipeline.bitmaps.a aVar = null;
        e eVar = VERSION.SDK_INT < 11 ? new e() : null;
        b bVar = new b(new d(xVar.e()), xVar.b());
        if (VERSION.SDK_INT >= 21) {
            aVar = new com.facebook.imagepipeline.bitmaps.a(xVar.a(), xVar.c());
        }
        return new g(eVar, bVar, aVar);
    }

    private g n() {
        if (this.n == null) {
            this.n = fm.a(this.b.n());
        }
        return this.n;
    }

    private fs o() {
        if (this.o == null) {
            this.o = new fs(this.b.d(), this.b.n().g(), l(), this.b.o(), this.b.m(), this.b.q(), this.b.f(), this.b.n().e(), c(), e(), m(), q(), this.b.c(), n());
        }
        return this.o;
    }

    private ft p() {
        if (this.p == null) {
            this.p = new ft(o(), this.b.l(), this.b.q(), this.b.m());
        }
        return this.p;
    }

    public n h() {
        if (this.r == null) {
            this.r = k.a(this.b.r());
        }
        return this.r;
    }

    private eb q() {
        if (this.q == null) {
            this.q = new eb(h(), this.b.n().e(), this.b.n().f(), this.b.f().a(), this.b.f().b(), this.b.g());
        }
        return this.q;
    }

    public do i() {
        if (this.d == null) {
            dt j = j();
            fo foVar = new fo(this, new bg(this.b.f().c()), (ActivityManager) this.b.d().getSystemService("activity"), j, cm.a());
            this.d = new do(new fp(this, j), foVar, j, bm.b(), this.b.d().getResources());
        }
        return this.d;
    }
}
