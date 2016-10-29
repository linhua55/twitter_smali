package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import com.facebook.cache.common.a;
import com.facebook.imagepipeline.bitmaps.g;
import com.facebook.imagepipeline.memory.PooledByteBuffer;
import com.facebook.imagepipeline.memory.ab;
import com.facebook.imagepipeline.memory.f;
import com.facebook.imagepipeline.producers.ac;
import com.facebook.imagepipeline.producers.ad;
import com.facebook.imagepipeline.producers.ao;
import com.facebook.imagepipeline.producers.ap;
import com.facebook.imagepipeline.producers.aq;
import com.facebook.imagepipeline.producers.aw;
import com.facebook.imagepipeline.producers.ax;
import com.facebook.imagepipeline.producers.ay;
import com.facebook.imagepipeline.producers.bh;
import com.facebook.imagepipeline.producers.bj;
import com.facebook.imagepipeline.producers.bl;
import com.facebook.imagepipeline.producers.bo;
import com.facebook.imagepipeline.producers.bw;
import com.facebook.imagepipeline.producers.ca;
import com.facebook.imagepipeline.producers.cg;
import com.facebook.imagepipeline.producers.cj;
import com.facebook.imagepipeline.producers.cn;
import com.facebook.imagepipeline.producers.h;
import com.facebook.imagepipeline.producers.i;
import com.facebook.imagepipeline.producers.j;
import com.facebook.imagepipeline.producers.l;
import com.facebook.imagepipeline.producers.p;
import com.facebook.imagepipeline.producers.q;
import com.facebook.imagepipeline.producers.x;
import ew;

/* compiled from: Twttr */
/* renamed from: fs */
public class fs {
    private ContentResolver a;
    private Resources b;
    private AssetManager c;
    private final f d;
    private final fx e;
    private final fz f;
    private final boolean g;
    private final boolean h;
    private final ff i;
    private final ab j;
    private final eb k;
    private final eb l;
    private final ew<a, PooledByteBuffer> m;
    private final ew<a, gh> n;
    private final eg o;
    private final g p;

    public fs(Context context, f fVar, fx fxVar, fz fzVar, boolean z, boolean z2, ff ffVar, ab abVar, ew<a, gh> ewVar, ew<a, PooledByteBuffer> ewVar2, eb ebVar, eb ebVar2, eg egVar, g gVar) {
        this.a = context.getApplicationContext().getContentResolver();
        this.b = context.getApplicationContext().getResources();
        this.c = context.getApplicationContext().getAssets();
        this.d = fVar;
        this.e = fxVar;
        this.f = fzVar;
        this.g = z;
        this.h = z2;
        this.i = ffVar;
        this.j = abVar;
        this.n = ewVar;
        this.m = ewVar2;
        this.k = ebVar;
        this.l = ebVar2;
        this.o = egVar;
        this.p = gVar;
    }

    public static com.facebook.imagepipeline.producers.a a(bw<gj> bwVar) {
        return new com.facebook.imagepipeline.producers.a(bwVar);
    }

    public h b(bw<com.facebook.common.references.a<gh>> bwVar) {
        return new h(this.n, this.o, bwVar);
    }

    public i c(bw<com.facebook.common.references.a<gh>> bwVar) {
        return new i(this.o, bwVar);
    }

    public j d(bw<com.facebook.common.references.a<gh>> bwVar) {
        return new j(this.n, this.o, bwVar);
    }

    public static l a(bw<gj> bwVar, bw<gj> bwVar2) {
        return new l(bwVar, bwVar2);
    }

    public p a() {
        return new p(this.j);
    }

    public q e(bw<gj> bwVar) {
        return new q(this.d, this.i.c(), this.e, this.f, this.g, this.h, bwVar);
    }

    public x f(bw<gj> bwVar) {
        return new x(this.k, this.l, this.o, bwVar);
    }

    public ac g(bw<gj> bwVar) {
        return new ac(this.o, bwVar);
    }

    public ad h(bw<gj> bwVar) {
        return new ad(this.m, this.o, bwVar);
    }

    public ao b() {
        return new ao(this.i.a(), this.j, this.c);
    }

    public ap c() {
        return new ap(this.i.a(), this.j, this.a);
    }

    public aq d() {
        return new aq(this.i.a(), this.j);
    }

    public aw e() {
        return new aw(this.i.a(), this.j);
    }

    public ax f() {
        return new ax(this.i.a(), this.j, this.b);
    }

    public ay g() {
        return new ay(this.i.a());
    }

    public bh a(bj bjVar) {
        return new bh(this.j, this.d, bjVar);
    }

    public bl i(bw<com.facebook.common.references.a<gh>> bwVar) {
        return new bl(this.n, this.o, bwVar);
    }

    public bo j(bw<com.facebook.common.references.a<gh>> bwVar) {
        return new bo(bwVar, this.p, this.i.d());
    }

    public ca k(bw<gj> bwVar) {
        return new ca(this.i.d(), this.j, bwVar);
    }

    public <T> cg<T> l(bw<T> bwVar) {
        return new cg(this.i.e(), bwVar);
    }

    public <T> cj<T> a(int i, bw<T> bwVar) {
        return new cj(i, this.i.e(), bwVar);
    }

    public cn m(bw<gj> bwVar) {
        return new cn(this.i.d(), this.j, bwVar);
    }
}
