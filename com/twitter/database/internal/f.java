package com.twitter.database.internal;

import com.twitter.database.model.b;
import com.twitter.database.model.l;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.database.model.r;
import com.twitter.database.model.s;
import com.twitter.database.model.w;
import com.twitter.util.j;
import com.twitter.util.object.ObjectUtils;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public abstract class f implements l {
    protected final b a;
    private final Map<Class<? extends p>, p> b;
    private final Map<Class<? extends q>, q> c;
    private final Map<Class<? extends r>, r> d;
    private final ThreadLocal<e> e;

    protected abstract Map<Class<? extends p>, Class<? extends p>> a();

    protected abstract Map<Class<? extends q>, Class<? extends q>> b();

    protected abstract Map<Class<? extends r>, Class<? extends r>> c();

    protected f(b bVar) {
        this.b = new HashMap();
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new ThreadLocal();
        this.a = bVar;
    }

    b d() {
        return this.a;
    }

    public <T extends p> T a(Class<T> cls) {
        return (p) ObjectUtils.a(a(cls, a(), this.b));
    }

    public void e() {
        j.c();
        this.a.a();
        try {
            for (Class a : a().keySet()) {
                a(a).h();
            }
            this.a.c();
        } finally {
            this.a.b();
        }
    }

    public <P> q<P> b(Class<? extends q<P>> cls) {
        return (q) ObjectUtils.a(a(cls, b(), this.c));
    }

    public <S> r<S> c(Class<? extends r<S>> cls) {
        return (r) ObjectUtils.a(a(cls, c(), this.d));
    }

    public w f() {
        return new p(this.a, g());
    }

    public com.twitter.database.model.f g() {
        com.twitter.database.model.f fVar = (e) this.e.get();
        if (fVar == null) {
            fVar = new e();
            this.e.set(fVar);
        }
        fVar.b();
        return fVar;
    }

    public void h() {
        w f = f();
        try {
            for (Class a : a().keySet()) {
                p a2 = a(a);
                if (a2 instanceof s) {
                    ((s) a2).o();
                }
            }
            f.a();
        } finally {
            f.close();
        }
    }

    private <T> T a(Class<? extends T> cls, Map<Class<? extends T>, Class<? extends T>> map, Map<Class<? extends T>, T> map2) {
        T t = map2.get(cls);
        if (t != null) {
            return t;
        }
        t = a(cls, map);
        map2.put(cls, t);
        return t;
    }

    private <T> T a(Class<? extends T> cls, Map<Class<? extends T>, Class<? extends T>> map) {
        Class cls2 = (Class) map.get(cls);
        if (cls2 == null) {
            throw new IllegalArgumentException("There is no implementation for " + cls.getCanonicalName());
        }
        try {
            return ObjectUtils.a(cls2.getConstructor(new Class[]{f.class}).newInstance(new Object[]{this}));
        } catch (Throwable e) {
            throw new IllegalArgumentException(e);
        } catch (Throwable e2) {
            throw new IllegalArgumentException(e2);
        } catch (Throwable e22) {
            throw new IllegalArgumentException(e22);
        } catch (Throwable e222) {
            throw new IllegalArgumentException(e222);
        }
    }

    boolean d(Class<? extends p> cls) {
        return a().get(cls) != null;
    }
}
