package io.fabric.sdk.android;

import android.content.Context;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.k;
import io.fabric.sdk.android.services.concurrency.u;
import java.io.File;
import java.util.Collection;

/* compiled from: Twttr */
public abstract class p<Result> implements Comparable<p> {
    f e;
    o<Result> f;
    Context g;
    l<Result> h;
    IdManager i;
    final k j;

    public abstract String a();

    public abstract String b();

    protected abstract Result f();

    public /* synthetic */ int compareTo(Object obj) {
        return a((p) obj);
    }

    public p() {
        this.f = new o(this);
        this.j = (k) getClass().getAnnotation(k.class);
    }

    void a(Context context, f fVar, l<Result> lVar, IdManager idManager) {
        this.e = fVar;
        this.g = new j(context, b(), G());
        this.h = lVar;
        this.i = idManager;
    }

    final void C() {
        this.f.a(this.e.f(), (Void) null);
    }

    protected boolean a_() {
        return true;
    }

    protected void a(Result result) {
    }

    protected void b(Result result) {
    }

    protected IdManager D() {
        return this.i;
    }

    public Context E() {
        return this.g;
    }

    public f F() {
        return this.e;
    }

    public String G() {
        return ".Fabric" + File.separator + b();
    }

    public int a(p pVar) {
        if (b(pVar)) {
            return 1;
        }
        if (pVar.b(this)) {
            return -1;
        }
        if (H() && !pVar.H()) {
            return 1;
        }
        if (H() || !pVar.H()) {
            return 0;
        }
        return -1;
    }

    boolean b(p pVar) {
        if (!H()) {
            return false;
        }
        for (Class isAssignableFrom : this.j.a()) {
            if (isAssignableFrom.isAssignableFrom(pVar.getClass())) {
                return true;
            }
        }
        return false;
    }

    boolean H() {
        return this.j != null;
    }

    protected Collection<u> I() {
        return this.f.c();
    }
}
