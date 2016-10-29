package com.twitter.android.moments.data;

import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import com.twitter.util.y;
import com.twitter.util.z;
import cym;
import dbd;
import rx.o;

/* compiled from: Twttr */
public abstract class e<T> implements LoaderCallbacks<Cursor> {
    private final y<T> a;
    private final LoaderManager b;
    private final int c;
    private T d;
    private boolean e;

    public abstract T c(Cursor cursor);

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    protected e(LoaderManager loaderManager, int i) {
        this.a = new y();
        this.b = loaderManager;
        this.c = i;
    }

    public void a(z<T> zVar) {
        this.a.a(zVar);
        if (!this.e) {
            this.b.initLoader(this.c, null, this);
            this.e = true;
        }
        if (this.d != null) {
            zVar.a(this.d);
        }
    }

    public void b(z<T> zVar) {
        a((z) zVar, true);
    }

    public void a(z<T> zVar, boolean z) {
        this.a.b(zVar);
        if (z && !this.a.j()) {
            a();
        }
    }

    public void a() {
        this.a.i();
        this.b.destroyLoader(this.c);
        this.e = false;
    }

    public y<T> b() {
        return this.a;
    }

    protected void a(T t) {
        this.a.a(t);
        this.d = t;
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        o.b(cursor).g(new g(this)).b(dbd.d()).a(cym.a()).b(new f(this));
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        this.d = null;
    }
}
