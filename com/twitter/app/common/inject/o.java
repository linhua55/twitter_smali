package com.twitter.app.common.inject;

import android.content.res.Configuration;
import android.os.Bundle;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.util.t;
import com.twitter.util.collection.MutableList;
import java.util.List;

/* compiled from: Twttr */
public class o {
    private final List<Object> a;
    private boolean b;
    private boolean c;

    o() {
        this.a = MutableList.a();
    }

    o(t tVar) {
        this.a = MutableList.a();
        tVar.a(new p(this));
    }

    o(BaseFragment baseFragment) {
        this.a = MutableList.a();
        baseFragment.b(new q(this));
    }

    public o a(Object obj) {
        this.a.add(obj);
        d(obj);
        e(obj);
        return this;
    }

    public o b(Object obj) {
        if (c(obj) >= 0) {
            f(obj);
            g(obj);
        }
        this.a.remove(obj);
        return this;
    }

    public int c(Object obj) {
        return this.a.indexOf(obj);
    }

    void a() {
        this.b = true;
        for (Object next : this.a) {
            if (next instanceof u) {
                ((u) next).aD_();
            }
        }
    }

    void b() {
        this.c = true;
        for (Object next : this.a) {
            if (next instanceof l) {
                ((l) next).an_();
            }
        }
    }

    void c() {
        this.c = false;
        for (int size = this.a.size() - 1; size >= 0; size--) {
            Object obj = this.a.get(size);
            if (obj instanceof l) {
                ((l) obj).ao_();
            }
        }
    }

    void d() {
        this.b = false;
        for (int size = this.a.size() - 1; size >= 0; size--) {
            Object obj = this.a.get(size);
            if (obj instanceof u) {
                ((u) obj).aE_();
            }
        }
    }

    void a(Bundle bundle) {
        t a = t.a(bundle);
        for (Object next : this.a) {
            if (next instanceof n) {
                a.a((n) next);
            }
        }
    }

    void e() {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            Object obj = this.a.get(size);
            if (obj instanceof s) {
                ((s) obj).ap_();
            }
        }
    }

    void a(Configuration configuration) {
        for (Object next : this.a) {
            if (next instanceof c) {
                ((c) next).a(configuration);
            }
        }
    }

    private void d(Object obj) {
        if (this.b && (obj instanceof u)) {
            ((u) obj).aD_();
        }
    }

    private void e(Object obj) {
        if (this.c && (obj instanceof l)) {
            ((l) obj).an_();
        }
    }

    private void f(Object obj) {
        if (this.c && (obj instanceof l)) {
            ((l) obj).ao_();
        }
    }

    private void g(Object obj) {
        if (this.b && (obj instanceof u)) {
            ((u) obj).aE_();
        }
    }
}
