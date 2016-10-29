package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.as;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.common.internal.x;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.xd;
import com.google.android.gms.internal.xe;
import com.google.android.gms.signin.internal.SignInResponse;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

public class n implements ag {
    private final ah a;
    private final Lock b;
    private final Context c;
    private final f d;
    private ConnectionResult e;
    private int f;
    private int g;
    private int h;
    private final Bundle i;
    private final Set<i> j;
    private xd k;
    private int l;
    private boolean m;
    private boolean n;
    private as o;
    private boolean p;
    private boolean q;
    private final w r;
    private final Map<a<?>, Integer> s;
    private final g<? extends xd, xe> t;
    private ArrayList<Future<?>> u;

    public n(ah ahVar, w wVar, Map<a<?>, Integer> map, f fVar, g<? extends xd, xe> gVar, Lock lock, Context context) {
        this.g = 0;
        this.i = new Bundle();
        this.j = new HashSet();
        this.u = new ArrayList();
        this.a = ahVar;
        this.r = wVar;
        this.s = map;
        this.d = fVar;
        this.t = gVar;
        this.b = lock;
        this.c = context;
    }

    private void a(SignInResponse signInResponse) {
        if (b(0)) {
            ConnectionResult a = signInResponse.a();
            if (a.b()) {
                ResolveAccountResponse b = signInResponse.b();
                ConnectionResult b2 = b.b();
                if (b2.b()) {
                    this.n = true;
                    this.o = b.a();
                    this.p = b.c();
                    this.q = b.d();
                    e();
                    return;
                }
                Log.wtf("GoogleApiClientConnecting", "Sign-in succeeded with resolve account failure: " + b2, new Exception());
                c(b2);
            } else if (b(a)) {
                h();
                e();
            } else {
                c(a);
            }
        }
    }

    private void a(boolean z) {
        if (this.k != null) {
            if (this.k.e() && z) {
                this.k.c();
            }
            this.k.d();
            this.o = null;
        }
    }

    private boolean a(int i, int i2, ConnectionResult connectionResult) {
        return (i2 != 1 || a(connectionResult)) ? this.e == null || i < this.f : false;
    }

    private boolean a(ConnectionResult connectionResult) {
        return connectionResult.a() || this.d.b(connectionResult.c()) != null;
    }

    private void b(ConnectionResult connectionResult, a<?> aVar, int i) {
        if (i != 2) {
            int a = aVar.a().a();
            if (a(a, i, connectionResult)) {
                this.e = connectionResult;
                this.f = a;
            }
        }
        this.a.b.put(aVar.c(), connectionResult);
    }

    private boolean b(int i) {
        if (this.g == i) {
            return true;
        }
        Log.i("GoogleApiClientConnecting", this.a.g.k());
        Log.wtf("GoogleApiClientConnecting", "GoogleApiClient connecting is in step " + c(this.g) + " but received callback for step " + c(i), new Exception());
        c(new ConnectionResult(8, null));
        return false;
    }

    private boolean b(ConnectionResult connectionResult) {
        return this.l != 2 ? this.l == 1 && !connectionResult.a() : true;
    }

    private String c(int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                return "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return "STEP_GETTING_REMOTE_SERVICE";
            default:
                return "UNKNOWN";
        }
    }

    private void c(ConnectionResult connectionResult) {
        i();
        a(!connectionResult.a());
        this.a.a(connectionResult);
        this.a.h.a(connectionResult);
    }

    private boolean d() {
        this.h--;
        if (this.h > 0) {
            return false;
        }
        if (this.h < 0) {
            Log.i("GoogleApiClientConnecting", this.a.g.k());
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            c(new ConnectionResult(8, null));
            return false;
        } else if (this.e == null) {
            return true;
        } else {
            this.a.f = this.f;
            c(this.e);
            return false;
        }
    }

    private void e() {
        if (this.h == 0) {
            if (!this.m || this.n) {
                f();
            }
        }
    }

    private void f() {
        ArrayList arrayList = new ArrayList();
        this.g = 1;
        this.h = this.a.a.size();
        for (i iVar : this.a.a.keySet()) {
            if (!this.a.b.containsKey(iVar)) {
                arrayList.add(this.a.a.get(iVar));
            } else if (d()) {
                g();
            }
        }
        if (!arrayList.isEmpty()) {
            this.u.add(ak.a().submit(new s(this, arrayList)));
        }
    }

    private void g() {
        this.a.g();
        ak.a().execute(new o(this));
        if (this.k != null) {
            if (this.p) {
                this.k.a(this.o, this.q);
            }
            a(false);
        }
        for (i iVar : this.a.b.keySet()) {
            ((h) this.a.a.get(iVar)).d();
        }
        this.a.h.a(this.i.isEmpty() ? null : this.i);
    }

    private void h() {
        this.m = false;
        this.a.g.d = Collections.emptySet();
        for (i iVar : this.j) {
            if (!this.a.b.containsKey(iVar)) {
                this.a.b.put(iVar, new ConnectionResult(17, null));
            }
        }
    }

    private void i() {
        Iterator it = this.u.iterator();
        while (it.hasNext()) {
            ((Future) it.next()).cancel(true);
        }
        this.u.clear();
    }

    private Set<Scope> j() {
        if (this.r == null) {
            return Collections.emptySet();
        }
        Set<Scope> hashSet = new HashSet(this.r.c());
        Map e = this.r.e();
        for (a aVar : e.keySet()) {
            if (!this.a.b.containsKey(aVar.c())) {
                hashSet.addAll(((x) e.get(aVar)).a);
            }
        }
        return hashSet;
    }

    public <A extends h, R extends com.google.android.gms.common.api.w, T extends c<R, A>> T a(T t) {
        this.a.g.a.add(t);
        return t;
    }

    public void a() {
        this.a.b.clear();
        this.m = false;
        this.e = null;
        this.g = 0;
        this.l = 2;
        this.n = false;
        this.p = false;
        Map hashMap = new HashMap();
        int i = 0;
        for (a aVar : this.s.keySet()) {
            h hVar = (h) this.a.a.get(aVar.c());
            int intValue = ((Integer) this.s.get(aVar)).intValue();
            int i2 = (aVar.a().a() == 1 ? 1 : 0) | i;
            if (hVar.f()) {
                this.m = true;
                if (intValue < this.l) {
                    this.l = intValue;
                }
                if (intValue != 0) {
                    this.j.add(aVar.c());
                }
            }
            hashMap.put(hVar, new p(this, aVar, intValue));
            i = i2;
        }
        if (i != 0) {
            this.m = false;
        }
        if (this.m) {
            this.r.a(Integer.valueOf(this.a.g.l()));
            q vVar = new v();
            this.k = (xd) this.t.a(this.c, this.a.g.a(), this.r, this.r.h(), vVar, vVar);
        }
        this.h = this.a.a.size();
        this.u.add(ak.a().submit(new q(this, hashMap)));
    }

    public void a(int i) {
        c(new ConnectionResult(8, null));
    }

    public void a(Bundle bundle) {
        if (b(1)) {
            if (bundle != null) {
                this.i.putAll(bundle);
            }
            if (d()) {
                g();
            }
        }
    }

    public void a(ConnectionResult connectionResult, a<?> aVar, int i) {
        if (b(1)) {
            b(connectionResult, aVar, i);
            if (d()) {
                g();
            }
        }
    }

    public <A extends h, T extends c<? extends com.google.android.gms.common.api.w, A>> T b(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    public boolean b() {
        i();
        a(true);
        this.a.a(null);
        return true;
    }

    public void c() {
    }
}
