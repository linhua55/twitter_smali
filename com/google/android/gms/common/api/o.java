package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import android.view.View;
import com.google.android.gms.common.api.internal.g;
import com.google.android.gms.common.api.internal.y;
import com.google.android.gms.common.api.internal.zzw;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.common.internal.x;
import com.google.android.gms.internal.wy;
import com.google.android.gms.internal.xd;
import com.google.android.gms.internal.xe;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;

public final class o {
    private Account a;
    private final Set<Scope> b;
    private final Set<Scope> c;
    private int d;
    private View e;
    private String f;
    private String g;
    private final Map<a<?>, x> h;
    private final Context i;
    private final Map<a<?>, b> j;
    private FragmentActivity k;
    private int l;
    private r m;
    private Looper n;
    private f o;
    private g<? extends xd, xe> p;
    private final ArrayList<q> q;
    private final ArrayList<r> r;

    public o(@NonNull Context context) {
        this.b = new HashSet();
        this.c = new HashSet();
        this.h = new ArrayMap();
        this.j = new ArrayMap();
        this.l = -1;
        this.o = f.b();
        this.p = wy.c;
        this.q = new ArrayList();
        this.r = new ArrayList();
        this.i = context;
        this.n = context.getMainLooper();
        this.f = context.getPackageName();
        this.g = context.getClass().getName();
    }

    private static <C extends h, O> C a(g<C, O> gVar, Object obj, Context context, Looper looper, w wVar, q qVar, r rVar) {
        return gVar.a(context, looper, wVar, obj, qVar, rVar);
    }

    private static <C extends j, O> e a(k<C, O> kVar, Object obj, Context context, Looper looper, w wVar, q qVar, r rVar) {
        return new e(context, looper, kVar.b(), qVar, rVar, wVar, kVar.a(obj));
    }

    private void a(zzw com_google_android_gms_common_api_internal_zzw, n nVar) {
        com_google_android_gms_common_api_internal_zzw.a(this.l, nVar, this.m);
    }

    private void a(n nVar) {
        zzw a = zzw.a(this.k);
        if (a == null) {
            new Handler(this.i.getMainLooper()).post(new p(this, nVar));
        } else {
            a(a, nVar);
        }
    }

    private n c() {
        w a = a();
        a aVar = null;
        Map e = a.e();
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayList arrayList = new ArrayList();
        a aVar2 = null;
        for (a aVar3 : this.j.keySet()) {
            a aVar32;
            h a2;
            a aVar4;
            Object obj = this.j.get(aVar32);
            int i = 0;
            if (e.get(aVar32) != null) {
                i = ((x) e.get(aVar32)).b ? 1 : 2;
            }
            arrayMap.put(aVar32, Integer.valueOf(i));
            q gVar = new g(aVar32, i);
            arrayList.add(gVar);
            a aVar5;
            if (aVar32.d()) {
                k b = aVar32.b();
                aVar5 = b.a() == 1 ? aVar32 : aVar2;
                a2 = a(b, obj, this.i, this.n, a, gVar, (r) gVar);
                aVar4 = aVar5;
            } else {
                g a3 = aVar32.a();
                aVar5 = a3.a() == 1 ? aVar32 : aVar2;
                a2 = a(a3, obj, this.i, this.n, a, gVar, (r) gVar);
                aVar4 = aVar5;
            }
            arrayMap2.put(aVar32.c(), a2);
            if (!a2.g()) {
                aVar32 = aVar;
            } else if (aVar != null) {
                throw new IllegalStateException(aVar32.e() + " cannot be used with " + aVar.e());
            }
            aVar2 = aVar4;
            aVar = aVar32;
        }
        if (aVar != null) {
            if (aVar2 != null) {
                throw new IllegalStateException(aVar.e() + " cannot be used with " + aVar2.e());
            }
            bm.a(this.a == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", new Object[]{aVar.e()});
            bm.a(this.b.equals(this.c), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", new Object[]{aVar.e()});
        }
        return new y(this.i, new ReentrantLock(), this.n, a, this.o, this.p, arrayMap, this.q, this.r, arrayMap2, this.l, y.a(arrayMap2.values(), true), arrayList);
    }

    public o a(@NonNull a<? extends e> aVar) {
        bm.a(aVar, "Api must not be null");
        this.j.put(aVar, null);
        Collection a = aVar.a().a(null);
        this.c.addAll(a);
        this.b.addAll(a);
        return this;
    }

    public o a(@NonNull r rVar) {
        bm.a(rVar, "Listener must not be null");
        this.r.add(rVar);
        return this;
    }

    public w a() {
        xe xeVar = xe.a;
        if (this.j.containsKey(wy.g)) {
            xeVar = (xe) this.j.get(wy.g);
        }
        return new w(this.a, this.b, this.h, this.d, this.e, this.f, this.g, xeVar);
    }

    public n b() {
        bm.b(!this.j.isEmpty(), "must call addApi() to add at least one API");
        n c = c();
        synchronized (n.a) {
            n.a.add(c);
        }
        if (this.l >= 0) {
            a(c);
        }
        return c;
    }
}
