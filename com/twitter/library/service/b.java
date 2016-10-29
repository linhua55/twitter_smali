package com.twitter.library.service;

import android.content.Context;
import android.util.Pair;
import com.twitter.internal.android.service.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.library.client.Session;
import com.twitter.library.network.j;
import com.twitter.library.network.w;
import com.twitter.library.scribe.ScribeService;
import com.twitter.util.object.e;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.cfb;

/* compiled from: Twttr */
public abstract class b<T extends c> extends x {
    private int a;
    private HttpOperation b;
    private boolean c;
    private boolean g;
    private boolean h;
    protected final d n;

    protected abstract d a();

    protected abstract T f();

    protected b(Context context, String str, Session session) {
        super(context, str, session);
        this.a = 0;
        this.b = null;
        this.c = true;
        this.g = true;
        this.h = false;
        if (session == null) {
            throw new IllegalArgumentException("Session cannot be null");
        }
        this.n = new d();
    }

    protected b(Context context, String str, Session session, int i) {
        this(context, str, session);
        this.g = i == 0;
    }

    protected b(Context context, String str, ab abVar) {
        super(context, str, abVar);
        this.a = 0;
        this.b = null;
        this.c = true;
        this.g = true;
        this.h = false;
        if (abVar == null) {
            throw new IllegalArgumentException("SessionStamp cannot be null");
        }
        this.n = new d();
        this.g = true;
    }

    public d m() {
        return this.n;
    }

    public void f(boolean z) {
        this.c = z;
    }

    public void g(int i) {
        this.a = i;
    }

    public void g(boolean z) {
        this.h = z;
    }

    protected final e K() {
        return d.a(this.p);
    }

    protected final void a_(aa aaVar) {
        d a = a();
        bbn.a().b("api_request_uri", a.a);
        ab abVar = (ab) e.a(N());
        bbl bbl = new bbl(abVar.c);
        i f = f();
        if (f != null) {
            f.a(bbl);
        }
        j b = a(this.p, a.a).a(abVar.c).a(a.b).a(a.c).e(this.g).a(f).a(this.n).a(this.c).b(this.h);
        if (a.f != null) {
            b.a(a.f);
        } else {
            b.b(new w(abVar.d));
        }
        if (this.a > 0) {
            b.a(this.a);
        }
        HttpOperation a2 = b.a();
        try {
            synchronized (this) {
                this.b = a2;
                if (isCancelled()) {
                    synchronized (this) {
                        this.b = null;
                    }
                    return;
                }
                for (Pair pair : a.d) {
                    a2.a((String) pair.first, (String) pair.second);
                }
                aaVar.a(a2.c());
                bbn.a(bbl);
                if (!(aaVar.b() || f == null)) {
                    aaVar.a(f.a());
                }
                synchronized (this) {
                    this.b = null;
                }
                a(a2, aaVar, f);
                Throwable c = aaVar.c();
                if (c != null) {
                    ScribeService.a(this.p, c);
                }
                cfb.b("APIRequest", "Action complete: " + M() + ", success: " + aaVar.b());
            }
        } catch (Throwable th) {
            synchronized (this) {
            }
            this.b = null;
        }
    }

    public void L() {
        synchronized (this) {
            cancel(true);
            HttpOperation httpOperation = this.b;
        }
        if (httpOperation != null) {
            httpOperation.b();
        }
    }

    protected void a(HttpOperation httpOperation, aa aaVar, T t) {
    }
}
