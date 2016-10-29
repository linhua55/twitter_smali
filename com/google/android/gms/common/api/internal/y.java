package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.ab;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.ak;
import com.google.android.gms.common.internal.al;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.xd;
import com.google.android.gms.internal.xe;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.Lock;

public final class y extends n implements aq {
    final Queue<c<?, ?>> a;
    ad b;
    final Map<i<?>, h> c;
    Set<Scope> d;
    final w e;
    final Map<a<?>, Integer> f;
    final g<? extends xd, xe> g;
    final Set<af<?>> h;
    Set<ax> i;
    private final Lock j;
    private final ak k;
    private ap l;
    private final int m;
    private final Context n;
    private final Looper o;
    private volatile boolean p;
    private long q;
    private long r;
    private final ab s;
    private final f t;
    private final Set<ar<?>> u;
    private ab v;
    private final ArrayList<g> w;
    private Integer x;
    private final ae y;
    private final al z;

    public y(Context context, Lock lock, Looper looper, w wVar, f fVar, g<? extends xd, xe> gVar, Map<a<?>, Integer> map, List<q> list, List<r> list2, Map<i<?>, h> map2, int i, int i2, ArrayList<g> arrayList) {
        this.l = null;
        this.a = new LinkedList();
        this.q = 120000;
        this.r = HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS;
        this.d = new HashSet();
        this.u = Collections.newSetFromMap(new WeakHashMap());
        this.h = Collections.newSetFromMap(new ConcurrentHashMap(16, AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION, 2));
        this.x = null;
        this.i = null;
        this.y = new z(this);
        this.z = new aa(this);
        this.n = context;
        this.j = lock;
        this.k = new ak(looper, this.z);
        this.o = looper;
        this.s = new ab(this, looper);
        this.t = fVar;
        this.m = i;
        if (this.m >= 0) {
            this.x = Integer.valueOf(i2);
        }
        this.f = map;
        this.c = map2;
        this.w = arrayList;
        for (q a : list) {
            this.k.a(a);
        }
        for (r a2 : list2) {
            this.k.a(a2);
        }
        this.e = wVar;
        this.g = gVar;
    }

    public static int a(Iterable<h> iterable, boolean z) {
        int i = 0;
        int i2 = 0;
        for (h hVar : iterable) {
            if (hVar.f()) {
                i2 = 1;
            }
            i = hVar.g() ? 1 : i;
        }
        return i2 != 0 ? (i == 0 || !z) ? 1 : 2 : 3;
    }

    private static void a(af<?> afVar, ab abVar, IBinder iBinder) {
        if (afVar.e()) {
            afVar.a(new ac(abVar, iBinder, null));
        } else if (iBinder == null || !iBinder.isBinderAlive()) {
            afVar.a(null);
            afVar.f();
            abVar.a(afVar.a().intValue());
        } else {
            ae acVar = new ac(abVar, iBinder, null);
            afVar.a(acVar);
            try {
                iBinder.linkToDeath(acVar, 0);
            } catch (RemoteException e) {
                afVar.f();
                abVar.a(afVar.a().intValue());
            }
        }
    }

    static String b(int i) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return "SIGN_IN_MODE_REQUIRED";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "SIGN_IN_MODE_OPTIONAL";
            case Util.TYPE_OTHER /*3*/:
                return "SIGN_IN_MODE_NONE";
            default:
                return "UNKNOWN";
        }
    }

    private void c(int i) {
        if (this.x == null) {
            this.x = Integer.valueOf(i);
        } else if (this.x.intValue() != i) {
            throw new IllegalStateException("Cannot use sign-in mode: " + b(i) + ". Mode was already set to " + b(this.x.intValue()));
        }
        if (this.l == null) {
            Object obj = null;
            Object obj2 = null;
            for (h hVar : this.c.values()) {
                if (hVar.f()) {
                    obj2 = 1;
                }
                obj = hVar.g() ? 1 : obj;
            }
            switch (this.x.intValue()) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (obj2 == null) {
                        throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
                    } else if (obj != null) {
                        throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
                    }
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (obj2 != null) {
                        this.l = new h(this.n, this, this.j, this.o, this.t, this.c, this.e, this.f, this.g, this.w);
                        return;
                    }
                    break;
            }
            this.l = new ah(this.n, this, this.j, this.o, this.t, this.c, this.e, this.f, this.g, this.w, this);
        }
    }

    private void m() {
        this.k.b();
        this.l.a();
    }

    private void n() {
        this.j.lock();
        try {
            if (g()) {
                m();
            }
            this.j.unlock();
        } catch (Throwable th) {
            this.j.unlock();
        }
    }

    private void o() {
        this.j.lock();
        try {
            if (i()) {
                m();
            }
            this.j.unlock();
        } catch (Throwable th) {
            this.j.unlock();
        }
    }

    public Looper a() {
        return this.o;
    }

    @NonNull
    public <C extends h> C a(@NonNull i<C> iVar) {
        h hVar = (h) this.c.get(iVar);
        bm.a(hVar, "Appropriate Api was not requested.");
        return hVar;
    }

    public <A extends h, R extends com.google.android.gms.common.api.w, T extends c<R, A>> T a(@NonNull T t) {
        bm.b(t.b() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        bm.b(this.c.containsKey(t.b()), "GoogleApiClient is not configured to use the API required for this call.");
        this.j.lock();
        try {
            if (this.l == null) {
                this.a.add(t);
            } else {
                t = this.l.a(t);
                this.j.unlock();
            }
            return t;
        } finally {
            this.j.unlock();
        }
    }

    public void a(int i) {
        boolean z = true;
        this.j.lock();
        if (!(i == 3 || i == 1 || i == 2)) {
            z = false;
        }
        try {
            bm.b(z, "Illegal sign-in mode: " + i);
            c(i);
            m();
        } finally {
            this.j.unlock();
        }
    }

    public void a(int i, boolean z) {
        if (i == 1 && !z) {
            h();
        }
        for (af afVar : this.h) {
            if (z) {
                afVar.c();
            }
            afVar.b(new Status(8, "The connection to Google Play services was lost"));
        }
        this.h.clear();
        this.k.a(i);
        this.k.a();
        if (i == 2) {
            m();
        }
    }

    public void a(Bundle bundle) {
        while (!this.a.isEmpty()) {
            b((c) this.a.remove());
        }
        this.k.a(bundle);
    }

    public void a(ConnectionResult connectionResult) {
        if (!this.t.a(this.n, connectionResult.c())) {
            i();
        }
        if (!g()) {
            this.k.a(connectionResult);
            this.k.a();
        }
    }

    <A extends h> void a(af<A> afVar) {
        this.h.add(afVar);
        afVar.a(this.y);
    }

    public void a(ax axVar) {
        this.j.lock();
        try {
            if (this.i == null) {
                this.i = new HashSet();
            }
            this.i.add(axVar);
        } finally {
            this.j.unlock();
        }
    }

    public void a(@NonNull q qVar) {
        this.k.a(qVar);
    }

    public void a(@NonNull r rVar) {
        this.k.a(rVar);
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append(str).append("mContext=").println(this.n);
        printWriter.append(str).append("mResuming=").print(this.p);
        printWriter.append(" mWorkQueue.size()=").print(this.a.size());
        printWriter.append(" mUnconsumedRunners.size()=").println(this.h.size());
        if (this.l != null) {
            this.l.a(str, fileDescriptor, printWriter, strArr);
        }
    }

    void a(boolean z) {
        for (af afVar : this.h) {
            if (afVar.a() != null) {
                afVar.c();
                a(afVar, this.v, a(afVar.b()).i());
                this.h.remove(afVar);
            } else if (z) {
                afVar.g();
            } else {
                afVar.f();
                this.h.remove(afVar);
            }
        }
    }

    public <A extends h, T extends c<? extends com.google.android.gms.common.api.w, A>> T b(@NonNull T t) {
        bm.b(t.b() != null, "This task can not be executed (it's probably a Batch or malformed)");
        this.j.lock();
        try {
            if (this.l == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (g()) {
                this.a.add(t);
                while (!this.a.isEmpty()) {
                    af afVar = (af) this.a.remove();
                    a(afVar);
                    afVar.a(Status.c);
                }
            } else {
                t = this.l.b(t);
                this.j.unlock();
            }
            return t;
        } finally {
            this.j.unlock();
        }
    }

    public void b() {
        boolean z = false;
        this.j.lock();
        try {
            if (this.m >= 0) {
                if (this.x != null) {
                    z = true;
                }
                bm.a(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.x == null) {
                this.x = Integer.valueOf(a(this.c.values(), false));
            } else if (this.x.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            a(this.x.intValue());
        } finally {
            this.j.unlock();
        }
    }

    public void b(ax axVar) {
        this.j.lock();
        try {
            if (this.i == null) {
                Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
            } else if (!this.i.remove(axVar)) {
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
            } else if (!j()) {
                this.l.e();
            }
            this.j.unlock();
        } catch (Throwable th) {
            this.j.unlock();
        }
    }

    public void b(@NonNull r rVar) {
        this.k.b(rVar);
    }

    public void c() {
        this.j.lock();
        try {
            boolean z = (this.l == null || this.l.b()) ? false : true;
            a(z);
            for (ar a : this.u) {
                a.a();
            }
            this.u.clear();
            for (af afVar : this.a) {
                afVar.a(null);
                afVar.f();
            }
            this.a.clear();
            if (this.l != null) {
                i();
                this.k.a();
                this.j.unlock();
            }
        } finally {
            this.j.unlock();
        }
    }

    public boolean d() {
        return this.l != null && this.l.c();
    }

    public boolean e() {
        return this.l != null && this.l.d();
    }

    boolean g() {
        return this.p;
    }

    void h() {
        if (!g()) {
            this.p = true;
            if (this.b == null) {
                this.b = (ad) al.a(this.n.getApplicationContext(), new ad(this), this.t);
            }
            this.s.sendMessageDelayed(this.s.obtainMessage(1), this.q);
            this.s.sendMessageDelayed(this.s.obtainMessage(2), this.r);
        }
    }

    boolean i() {
        if (!g()) {
            return false;
        }
        this.p = false;
        this.s.removeMessages(2);
        this.s.removeMessages(1);
        if (this.b != null) {
            this.b.b();
            this.b = null;
        }
        return true;
    }

    boolean j() {
        boolean z = false;
        this.j.lock();
        try {
            if (this.i != null) {
                if (!this.i.isEmpty()) {
                    z = true;
                }
                this.j.unlock();
            }
            return z;
        } finally {
            this.j.unlock();
        }
    }

    String k() {
        Writer stringWriter = new StringWriter();
        a(TtmlNode.ANONYMOUS_REGION_ID, null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    public int l() {
        return System.identityHashCode(this);
    }
}
