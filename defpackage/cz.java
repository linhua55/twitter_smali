package defpackage;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.v7.recyclerview.BuildConfig;
import android.view.MotionEvent;
import bx;
import cb;
import com.facebook.drawee.components.DraweeEventTracker;
import com.facebook.drawee.components.DraweeEventTracker.Event;
import com.facebook.drawee.components.a;
import com.facebook.drawee.components.c;
import com.facebook.drawee.components.d;
import da;
import db;
import df;
import dg;
import di;
import dj;
import dl;
import dm;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
/* compiled from: Twttr */
/* renamed from: cz */
public abstract class cz<T, INFO> implements c, dj, dk {
    private static final Class<?> a;
    private final DraweeEventTracker b;
    private final a c;
    private final Executor d;
    @Nullable
    private d e;
    @Nullable
    private di f;
    @Nullable
    private dg<INFO> g;
    @Nullable
    private dm h;
    @Nullable
    private Drawable i;
    private String j;
    private Object k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    @Nullable
    private com.facebook.datasource.d<T> p;
    @Nullable
    private T q;
    @Nullable
    private Drawable r;

    protected abstract com.facebook.datasource.d<T> a();

    protected abstract void a(@Nullable Drawable drawable);

    protected abstract void a(@Nullable T t);

    @Nullable
    protected abstract INFO c(T t);

    protected abstract Drawable d(T t);

    static {
        a = cz.class;
    }

    public cz(a aVar, Executor executor, String str, Object obj) {
        this.b = new DraweeEventTracker();
        this.c = aVar;
        this.d = executor;
        b(str, obj);
    }

    protected void a(String str, Object obj) {
        b(str, obj);
    }

    private void b(String str, Object obj) {
        this.b.a(Event.f);
        if (this.c != null) {
            this.c.b(this);
        }
        this.l = false;
        m();
        this.o = false;
        if (this.e != null) {
            this.e.a();
        }
        if (this.f != null) {
            this.f.a();
            this.f.a(this);
        }
        if (this.g instanceof db) {
            ((db) this.g).a();
        } else {
            this.g = null;
        }
        if (this.h != null) {
            this.h.b();
            this.h.a(null);
            this.h = null;
        }
        this.i = null;
        if (cb.a(2)) {
            cb.a(a, "controller %x %s -> %s: initialize", Integer.valueOf(System.identityHashCode(this)), this.j, str);
        }
        this.j = str;
        this.k = obj;
    }

    public void b() {
        this.b.a(Event.i);
        if (this.e != null) {
            this.e.b();
        }
        if (this.f != null) {
            this.f.b();
        }
        if (this.h != null) {
            this.h.b();
        }
        m();
    }

    private void m() {
        boolean z = this.m;
        this.m = false;
        this.n = false;
        if (this.p != null) {
            this.p.h();
            this.p = null;
        }
        if (this.r != null) {
            a(this.r);
        }
        this.r = null;
        if (this.q != null) {
            c(BuildConfig.BUILD_TYPE, this.q);
            a(this.q);
            this.q = null;
        }
        if (z) {
            e().a(this.j);
        }
    }

    @Nullable
    protected d c() {
        return this.e;
    }

    protected void a(@Nullable d dVar) {
        this.e = dVar;
    }

    @Nullable
    protected di d() {
        return this.f;
    }

    protected void a(@Nullable di diVar) {
        this.f = diVar;
        if (this.f != null) {
            this.f.a(this);
        }
    }

    protected void a(boolean z) {
        this.o = z;
    }

    public void a(dg<? super INFO> dgVar) {
        bx.a(dgVar);
        if (this.g instanceof db) {
            ((db) this.g).a(dgVar);
        } else if (this.g != null) {
            this.g = db.a(this.g, dgVar);
        } else {
            this.g = dgVar;
        }
    }

    protected dg<INFO> e() {
        if (this.g == null) {
            return df.a();
        }
        return this.g;
    }

    @Nullable
    public dl f() {
        return this.h;
    }

    public void a(@Nullable dl dlVar) {
        if (cb.a(2)) {
            cb.a(a, "controller %x %s: setHierarchy: %s", Integer.valueOf(System.identityHashCode(this)), this.j, dlVar);
        }
        this.b.a(dlVar != null ? Event.a : Event.b);
        if (this.m) {
            this.c.b(this);
            b();
        }
        if (this.h != null) {
            this.h.a(null);
            this.h = null;
        }
        if (dlVar != null) {
            bx.a(dlVar instanceof dm);
            this.h = (dm) dlVar;
            this.h.a(this.i);
        }
    }

    public void g() {
        if (cb.a(2)) {
            cb.a(a, "controller %x %s: onAttach: %s", Integer.valueOf(System.identityHashCode(this)), this.j, this.m ? "request already submitted" : "request needs submit");
        }
        this.b.a(Event.g);
        bx.a(this.h);
        this.c.b(this);
        this.l = true;
        if (!this.m) {
            k();
        }
    }

    public void h() {
        if (cb.a(2)) {
            cb.a(a, "controller %x %s: onDetach", Integer.valueOf(System.identityHashCode(this)), this.j);
        }
        this.b.a(Event.h);
        this.l = false;
        this.c.a(this);
    }

    public boolean a(MotionEvent motionEvent) {
        if (cb.a(2)) {
            cb.a(a, "controller %x %s: onTouchEvent %s", Integer.valueOf(System.identityHashCode(this)), this.j, motionEvent);
        }
        if (this.f == null) {
            return false;
        }
        if (!this.f.c() && !i()) {
            return false;
        }
        this.f.a(motionEvent);
        return true;
    }

    protected boolean i() {
        return n();
    }

    private boolean n() {
        return this.n && this.e != null && this.e.c();
    }

    public boolean j() {
        if (cb.a(2)) {
            cb.a(a, "controller %x %s: onClick", Integer.valueOf(System.identityHashCode(this)), this.j);
        }
        if (!n()) {
            return false;
        }
        this.e.d();
        this.h.b();
        k();
        return true;
    }

    protected void k() {
        this.b.a(Event.j);
        e().a(this.j, this.k);
        this.h.a(0.0f, true);
        this.m = true;
        this.n = false;
        this.p = a();
        if (cb.a(2)) {
            cb.a(a, "controller %x %s: submitRequest: dataSource: %x", Integer.valueOf(System.identityHashCode(this)), this.j, Integer.valueOf(System.identityHashCode(this.p)));
        }
        this.p.a(new da(this, this.j, this.p.c()), this.d);
    }

    private void a(String str, com.facebook.datasource.d<T> dVar, @Nullable T t, float f, boolean z, boolean z2) {
        if (a(str, (com.facebook.datasource.d) dVar)) {
            this.b.a(z ? Event.k : Event.l);
            try {
                Drawable d = d(t);
                Object obj = this.q;
                Drawable drawable = this.r;
                this.q = t;
                this.r = d;
                if (z) {
                    try {
                        c("set_final_result @ onNewResult", t);
                        this.p = null;
                        this.h.a(d, 1.0f, z2);
                        e().a(str, c(t), l());
                    } catch (Throwable th) {
                        if (!(drawable == null || drawable == d)) {
                            a(drawable);
                        }
                        if (!(obj == null || obj == t)) {
                            c("release_previous_result @ onNewResult", obj);
                            a(obj);
                        }
                    }
                } else {
                    c("set_intermediate_result @ onNewResult", t);
                    this.h.a(d, f, z2);
                    e().b(str, c(t));
                }
                if (!(drawable == null || drawable == d)) {
                    a(drawable);
                }
                if (obj != null && obj != t) {
                    c("release_previous_result @ onNewResult", obj);
                    a(obj);
                    return;
                }
                return;
            } catch (Throwable e) {
                c("drawable_failed @ onNewResult", t);
                a((Object) t);
                a(str, (com.facebook.datasource.d) dVar, e, z);
                return;
            }
        }
        c("ignore_old_datasource @ onNewResult", t);
        a((Object) t);
        dVar.h();
    }

    private void a(String str, com.facebook.datasource.d<T> dVar, Throwable th, boolean z) {
        if (a(str, (com.facebook.datasource.d) dVar)) {
            this.b.a(z ? Event.m : Event.n);
            if (z) {
                a("final_failed @ onFailure", th);
                this.p = null;
                this.n = true;
                if (this.o && this.r != null) {
                    this.h.a(this.r, 1.0f, true);
                } else if (n()) {
                    this.h.b(th);
                } else {
                    this.h.a(th);
                }
                e().b(this.j, th);
                return;
            }
            a("intermediate_failed @ onFailure", th);
            e().a(this.j, th);
            return;
        }
        a("ignore_old_datasource @ onFailure", th);
        dVar.h();
    }

    private void a(String str, com.facebook.datasource.d<T> dVar, float f, boolean z) {
        if (!a(str, (com.facebook.datasource.d) dVar)) {
            a("ignore_old_datasource @ onProgress", null);
            dVar.h();
        } else if (!z) {
            this.h.a(f, false);
        }
    }

    private boolean a(String str, com.facebook.datasource.d<T> dVar) {
        return str.equals(this.j) && dVar == this.p && this.m;
    }

    private void c(String str, T t) {
        if (cb.a(2)) {
            cb.a(a, "controller %x %s: %s: image: %s %x", new Object[]{Integer.valueOf(System.identityHashCode(this)), this.j, str, e(t), Integer.valueOf(b(t))});
        }
    }

    private void a(String str, Throwable th) {
        if (cb.a(2)) {
            cb.a(a, "controller %x %s: %s: failure: %s", Integer.valueOf(System.identityHashCode(this)), this.j, str, th);
        }
    }

    @Nullable
    public Animatable l() {
        return this.r instanceof Animatable ? (Animatable) this.r : null;
    }

    protected String e(@Nullable T t) {
        return t != null ? t.getClass().getSimpleName() : "<null>";
    }

    protected int b(@Nullable T t) {
        return System.identityHashCode(t);
    }

    public String toString() {
        return bt.a((Object) this).a("isAttached", this.l).a("isRequestSubmitted", this.m).a("hasFetchFailed", this.n).a("fetchedImage", b(this.q)).a("events", this.b.toString()).toString();
    }
}
