package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import bx;
import bz;
import com.facebook.cache.disk.h;
import com.facebook.common.memory.b;
import com.facebook.common.memory.c;
import com.facebook.imagepipeline.bitmaps.g;
import com.facebook.imagepipeline.memory.u;
import com.facebook.imagepipeline.memory.x;
import com.facebook.imagepipeline.producers.ag;
import com.facebook.imagepipeline.producers.bj;
import dq;
import eg;
import en;
import eo;
import ep;
import eu;
import ex;
import fb;
import fe;
import ff;
import fj;
import fk;
import fl;
import fx;
import fz;
import gb;
import go;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.annotation.Nullable;

/* compiled from: Twttr */
/* renamed from: fi */
public class fi {
    @Nullable
    private final dq a;
    private final bz<ex> b;
    private final eg c;
    private final Context d;
    private final boolean e;
    private final bz<ex> f;
    private final ff g;
    private final eu h;
    @Nullable
    private final fx i;
    private final bz<Boolean> j;
    private final h k;
    private final b l;
    private final bj m;
    @Nullable
    private final g n;
    private final x o;
    private final fz p;
    private final Set<go> q;
    private final boolean r;
    private final h s;

    private fi(fl flVar) {
        this.a = fl.a(flVar);
        this.b = fl.b(flVar) == null ? new en((ActivityManager) fl.c(flVar).getSystemService("activity")) : fl.b(flVar);
        this.c = fl.d(flVar) == null ? eo.a() : fl.d(flVar);
        this.d = (Context) bx.a(fl.c(flVar));
        this.e = fl.e(flVar);
        this.f = fl.f(flVar) == null ? new ep() : fl.f(flVar);
        this.h = fl.g(flVar) == null ? fb.l() : fl.g(flVar);
        this.i = fl.h(flVar);
        this.j = fl.i(flVar) == null ? new fj(this) : fl.i(flVar);
        this.k = fl.j(flVar) == null ? fi.b(fl.c(flVar)) : fl.j(flVar);
        this.l = fl.k(flVar) == null ? c.a() : fl.k(flVar);
        this.m = fl.l(flVar) == null ? new ag() : fl.l(flVar);
        this.n = fl.m(flVar);
        this.o = fl.n(flVar) == null ? new x(u.i().a()) : fl.n(flVar);
        this.p = fl.o(flVar) == null ? new gb() : fl.o(flVar);
        this.q = fl.p(flVar) == null ? new HashSet() : fl.p(flVar);
        this.r = fl.q(flVar);
        this.s = fl.r(flVar) == null ? this.k : fl.r(flVar);
        this.g = fl.s(flVar) == null ? new fe(this.o.c()) : fl.s(flVar);
    }

    private static h b(Context context) {
        return h.j().a(new fk(context)).a("image_cache").a(41943040).b(10485760).c(2097152).a();
    }

    @Nullable
    public dq a() {
        return this.a;
    }

    public bz<ex> b() {
        return this.b;
    }

    public eg c() {
        return this.c;
    }

    public Context d() {
        return this.d;
    }

    public bz<ex> e() {
        return this.f;
    }

    public ff f() {
        return this.g;
    }

    public eu g() {
        return this.h;
    }

    @Nullable
    public fx h() {
        return this.i;
    }

    public bz<Boolean> i() {
        return this.j;
    }

    public h j() {
        return this.k;
    }

    public b k() {
        return this.l;
    }

    public bj l() {
        return this.m;
    }

    public boolean m() {
        return this.e;
    }

    public x n() {
        return this.o;
    }

    public fz o() {
        return this.p;
    }

    public Set<go> p() {
        return Collections.unmodifiableSet(this.q);
    }

    public boolean q() {
        return this.r;
    }

    public h r() {
        return this.s;
    }

    public static fl a(Context context) {
        return new fl(context, null);
    }
}
