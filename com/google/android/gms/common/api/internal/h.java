package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.xd;
import com.google.android.gms.internal.xe;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;

public class h implements ap {
    private final Context a;
    private final y b;
    private final Looper c;
    private final ah d;
    private final ah e;
    private final Map<i<?>, ah> f;
    private final Set<au> g;
    private final com.google.android.gms.common.api.h h;
    private Bundle i;
    private ConnectionResult j;
    private ConnectionResult k;
    private boolean l;
    private final Lock m;
    private int n;

    public h(Context context, y yVar, Lock lock, Looper looper, f fVar, Map<i<?>, com.google.android.gms.common.api.h> map, w wVar, Map<a<?>, Integer> map2, g<? extends xd, xe> gVar, ArrayList<g> arrayList) {
        this.f = new ArrayMap();
        this.g = Collections.newSetFromMap(new WeakHashMap());
        this.j = null;
        this.k = null;
        this.l = false;
        this.n = 0;
        this.a = context;
        this.b = yVar;
        this.m = lock;
        this.c = looper;
        com.google.android.gms.common.api.h hVar = null;
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        for (i iVar : map.keySet()) {
            com.google.android.gms.common.api.h hVar2 = (com.google.android.gms.common.api.h) map.get(iVar);
            if (hVar2.g()) {
                hVar = hVar2;
            }
            if (hVar2.f()) {
                arrayMap.put(iVar, hVar2);
            } else {
                arrayMap2.put(iVar, hVar2);
            }
        }
        this.h = hVar;
        if (arrayMap.isEmpty()) {
            throw new IllegalStateException("CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        }
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (a aVar : map2.keySet()) {
            i c = aVar.c();
            if (arrayMap.containsKey(c)) {
                arrayMap3.put(aVar, map2.get(aVar));
            } else if (arrayMap2.containsKey(c)) {
                arrayMap4.put(aVar, map2.get(aVar));
            } else {
                throw new IllegalStateException("Each API in the apiTypeMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            g gVar2 = (g) it.next();
            if (arrayMap3.containsKey(gVar2.a)) {
                arrayList2.add(gVar2);
            } else if (arrayMap4.containsKey(gVar2.a)) {
                arrayList3.add(gVar2);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the apiTypeMap");
            }
        }
        Context context2 = context;
        this.d = new ah(context2, this.b, lock, looper, fVar, arrayMap2, null, arrayMap4, null, arrayList3, new i(this));
        Context context3 = context;
        this.e = new ah(context3, this.b, lock, looper, fVar, arrayMap, wVar, arrayMap3, gVar, arrayList2, new j(this));
        for (i iVar2 : arrayMap2.keySet()) {
            this.f.put(iVar2, this.d);
        }
        for (i iVar22 : arrayMap.keySet()) {
            this.f.put(iVar22, this.e);
        }
    }

    private void a(int i, boolean z) {
        this.b.a(i, z);
        this.k = null;
        this.j = null;
    }

    private void a(Bundle bundle) {
        if (this.i == null) {
            this.i = bundle;
        } else if (bundle != null) {
            this.i.putAll(bundle);
        }
    }

    private void a(ConnectionResult connectionResult) {
        switch (this.n) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.b.a(connectionResult);
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                break;
        }
        j();
        this.n = 0;
    }

    private static boolean b(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.b();
    }

    private boolean c(c<? extends com.google.android.gms.common.api.w, ? extends com.google.android.gms.common.api.h> cVar) {
        i b = cVar.b();
        bm.b(this.f.containsKey(b), "GoogleApiClient is not configured to use the API required for this call.");
        return ((ah) this.f.get(b)).equals(this.e);
    }

    private void g() {
        this.k = null;
        this.j = null;
        this.d.a();
        this.e.a();
    }

    private void h() {
        if (b(this.j)) {
            if (b(this.k) || k()) {
                i();
            } else if (this.k == null) {
            } else {
                if (this.n == 1) {
                    j();
                    return;
                }
                a(this.k);
                this.d.b();
            }
        } else if (this.j != null && b(this.k)) {
            this.e.b();
            a(this.j);
        } else if (this.j != null && this.k != null) {
            ConnectionResult connectionResult = this.j;
            if (this.e.f < this.d.f) {
                connectionResult = this.k;
            }
            a(connectionResult);
        }
    }

    private void i() {
        switch (this.n) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.b.a(this.i);
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                break;
        }
        j();
        this.n = 0;
    }

    private void j() {
        for (au a : this.g) {
            a.a();
        }
        this.g.clear();
    }

    private boolean k() {
        return this.k != null && this.k.c() == 4;
    }

    @Nullable
    private PendingIntent l() {
        return this.h == null ? null : PendingIntent.getActivity(this.a, this.b.l(), this.h.h(), C.SAMPLE_FLAG_DECODE_ONLY);
    }

    public <A extends com.google.android.gms.common.api.h, R extends com.google.android.gms.common.api.w, T extends c<R, A>> T a(@NonNull T t) {
        if (!c((c) t)) {
            return this.d.a((c) t);
        }
        if (!k()) {
            return this.e.a((c) t);
        }
        t.a(new Status(4, null, l()));
        return t;
    }

    public void a() {
        this.n = 2;
        this.l = false;
        g();
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append(str).append("authClient").println(":");
        this.e.a(str + "  ", fileDescriptor, printWriter, strArr);
        printWriter.append(str).append("anonClient").println(":");
        this.d.a(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public <A extends com.google.android.gms.common.api.h, T extends c<? extends com.google.android.gms.common.api.w, A>> T b(@NonNull T t) {
        if (!c((c) t)) {
            return this.d.b((c) t);
        }
        if (!k()) {
            return this.e.b((c) t);
        }
        t.a(new Status(4, null, l()));
        return t;
    }

    public boolean b() {
        this.k = null;
        this.j = null;
        this.n = 0;
        boolean b = this.d.b();
        boolean b2 = this.e.b();
        j();
        return b && b2;
    }

    public boolean c() {
        boolean z = true;
        this.m.lock();
        try {
            if (!(this.d.c() && (f() || k() || this.n == 1))) {
                z = false;
            }
            this.m.unlock();
            return z;
        } catch (Throwable th) {
            this.m.unlock();
        }
    }

    public boolean d() {
        this.m.lock();
        try {
            boolean z = this.n == 2;
            this.m.unlock();
            return z;
        } catch (Throwable th) {
            this.m.unlock();
        }
    }

    public void e() {
        this.d.e();
        this.e.e();
    }

    public boolean f() {
        return this.e.c();
    }
}
