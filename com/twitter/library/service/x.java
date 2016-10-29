package com.twitter.library.service;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.twitter.app.common.util.f;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.android.service.ac;
import com.twitter.internal.android.service.c;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.network.an;
import com.twitter.library.network.j;
import com.twitter.library.provider.di;
import com.twitter.library.resilient.a;
import com.twitter.library.resilient.b;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import defpackage.bbn;

/* compiled from: Twttr */
public abstract class x extends AsyncOperation<Bundle, aa> {
    private final az a;
    private int b;
    private boolean c;
    private String g;
    private ab h;
    public final Bundle o;
    protected final Context p;
    protected final an q;

    protected abstract void a_(aa aaVar);

    protected /* synthetic */ Object c() {
        return Q();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return R();
    }

    protected x(Context context, String str) {
        boolean z = true;
        super(str);
        this.g = "Proxying app visibility from request.";
        this.o = new Bundle();
        this.p = context.getApplicationContext();
        this.q = an.a(context);
        this.a = az.a(context);
        a((ac) new k().a(new q(1)).a(new l(context)));
        b(1);
        if (d.a("set_polling_header_using_visibility_enabled")) {
            if (f.a().b()) {
                z = false;
            }
            this.c = z;
        } else {
            this.c = false;
        }
        if (this instanceof b) {
            a((c) a.a(this.p));
        }
    }

    protected x(Context context, String str, Session session) {
        this(context, str);
        if (session != null) {
            this.h = new ab(session);
        }
    }

    protected x(Context context, String str, ab abVar) {
        this(context, str);
        this.h = abVar;
    }

    public final int M() {
        return this.b;
    }

    public final <T extends x> T h(int i) {
        this.b = i;
        return this;
    }

    public final <T extends x> T b(String str, int i) {
        this.o.putInt(str, i);
        return this;
    }

    public final <T extends x> T b(String str, long j) {
        this.o.putLong(str, j);
        return this;
    }

    public final <T extends x> T a(String str, boolean z) {
        this.o.putBoolean(str, z);
        return this;
    }

    public final <T extends x> T b(String str, String str2) {
        this.o.putString(str, str2);
        return this;
    }

    public final <T extends x> T a(String str, Parcelable parcelable) {
        this.o.putParcelable(str, parcelable);
        return this;
    }

    public final <T extends x> T a(String str, int[] iArr) {
        this.o.putIntArray(str, iArr);
        return this;
    }

    public final <T extends x> T a(Bundle bundle) {
        this.o.putAll(bundle);
        return this;
    }

    public final ab N() {
        return this.h;
    }

    public final boolean O() {
        return this.c;
    }

    protected final j a(Context context, CharSequence charSequence) {
        j jVar = new j(context, charSequence);
        if (O()) {
            return jVar.a(this.g);
        }
        return jVar.b(this.g);
    }

    public final <T extends x> T k(String str) {
        if (AppConfig.m().a()) {
            c(str, "Cannot force polling without a reason");
        }
        this.g = str;
        this.c = true;
        return this;
    }

    public final <T extends x> T l(String str) {
        if (AppConfig.m().a()) {
            c(str, "Cannot force non-polling without a reason");
        }
        this.g = str;
        this.c = false;
        return this;
    }

    static void c(String str, String str2) {
        if (aj.a((CharSequence) str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    public final <T extends x> T a(x xVar) {
        if (xVar.O()) {
            k(xVar.g);
        } else {
            l(xVar.g);
        }
        return this;
    }

    public aa P() {
        return (aa) e.a((aa) bbn.a().a(new y(this)));
    }

    protected final void b(AsyncOperation<?, ?> asyncOperation) {
        this.a.a((AsyncOperation) asyncOperation);
    }

    protected aa Q() {
        aa aaVar = new aa();
        aaVar.a(false);
        return aaVar;
    }

    protected final aa R() throws InterruptedException {
        ab N = N();
        if (N != null) {
            bbn.a().b("request_user_id", Long.valueOf(N.c));
        }
        aa aaVar = new aa();
        if (b(aaVar)) {
            a_(aaVar);
        }
        return aaVar;
    }

    public final di S() {
        if (this.h != null) {
            return di.a(this.p, this.h.c);
        }
        throw new IllegalStateException("Session is null when accessing DB. Did you forget to pass in a Session to the constructor?");
    }

    protected final com.twitter.library.provider.e T() {
        return new com.twitter.library.provider.e(this.p.getContentResolver());
    }

    protected boolean b(aa aaVar) {
        return true;
    }

    public boolean U() {
        ab l = l();
        return (l == null || l.b() == null || !((aa) l.b()).b()) ? false : true;
    }
}
