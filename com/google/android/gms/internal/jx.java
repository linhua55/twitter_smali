package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import tv.periscope.chatman.api.WireMessage;

@oi
public class jx implements jm {
    private final AdRequestInfoParcel a;
    private final kd b;
    private final Context c;
    private final jo d;
    private final boolean e;
    private final long f;
    private final long g;
    private final int h;
    private final Object i;
    private boolean j;
    private final Map<sm<ju>, jr> k;
    private final boolean l;

    public jx(Context context, AdRequestInfoParcel adRequestInfoParcel, kd kdVar, jo joVar, boolean z, boolean z2, long j, long j2, int i) {
        this.i = new Object();
        this.j = false;
        this.k = new HashMap();
        this.c = context;
        this.a = adRequestInfoParcel;
        this.b = kdVar;
        this.d = joVar;
        this.e = z;
        this.l = z2;
        this.f = j;
        this.g = j2;
        this.h = i;
    }

    private void a(sm<ju> smVar) {
        qw.a.post(new jz(this, smVar));
    }

    private ju b(List<sm<ju>> list) {
        Throwable e;
        synchronized (this.i) {
            if (this.j) {
                ju juVar = new ju(-1);
                return juVar;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                sm smVar = (sm) it.next();
                try {
                    juVar = (ju) smVar.get();
                    if (juVar != null && juVar.a == 0) {
                        a(smVar);
                        return juVar;
                    }
                } catch (InterruptedException e2) {
                    e = e2;
                    b.d("Exception while processing an adapter; continuing with other adapters", e);
                } catch (ExecutionException e3) {
                    e = e3;
                    b.d("Exception while processing an adapter; continuing with other adapters", e);
                }
            }
            a(null);
            return new ju(1);
        }
    }

    private ju c(List<sm<ju>> list) {
        InterruptedException max;
        synchronized (this.i) {
            if (this.j) {
                ju juVar = new ju(-1);
                return juVar;
            }
            long j = -1;
            sm smVar = null;
            juVar = null;
            long j2 = this.d.k != -1 ? this.d.k : 10000;
            Iterator it = list.iterator();
            long j3 = j2;
            while (it.hasNext()) {
                ju juVar2;
                kn knVar;
                int a;
                ju juVar3;
                sm smVar2;
                ju juVar4;
                sm smVar3 = (sm) it.next();
                long a2 = ar.i().a();
                if (j3 == 0) {
                    try {
                        if (smVar3.isDone()) {
                            juVar2 = (ju) smVar3.get();
                            if (juVar2 != null && juVar2.a == 0) {
                                knVar = juVar2.f;
                                if (knVar != null && knVar.a() > j) {
                                    a = knVar.a();
                                    juVar3 = juVar2;
                                    smVar2 = smVar3;
                                    juVar4 = juVar3;
                                    smVar = smVar2;
                                    juVar3 = juVar4;
                                    max = Math.max(j3 - (ar.i().a() - a2), 0);
                                    j = a;
                                    juVar = juVar3;
                                    j3 = max;
                                }
                            }
                            juVar4 = juVar;
                            smVar2 = smVar;
                            a = j;
                            smVar = smVar2;
                            juVar3 = juVar4;
                            max = Math.max(j3 - (ar.i().a() - a2), 0);
                            j = a;
                            juVar = juVar3;
                            j3 = max;
                        }
                    } catch (InterruptedException e) {
                        max = e;
                        try {
                            b.d("Exception while processing an adapter; continuing with other adapters", max);
                            j3 = max;
                        } finally {
                            juVar = j3 - (ar.i().a() - a2);
                            j = 0;
                            Math.max(juVar, j);
                            j = j3;
                        }
                    } catch (ExecutionException e2) {
                        max = e2;
                        b.d("Exception while processing an adapter; continuing with other adapters", max);
                        j3 = max;
                    } catch (RemoteException e3) {
                        max = e3;
                        b.d("Exception while processing an adapter; continuing with other adapters", max);
                        j3 = max;
                    } catch (TimeoutException e4) {
                        max = e4;
                        b.d("Exception while processing an adapter; continuing with other adapters", max);
                        j3 = max;
                    }
                }
                juVar2 = (ju) smVar3.get(j3, TimeUnit.MILLISECONDS);
                knVar = juVar2.f;
                a = knVar.a();
                juVar3 = juVar2;
                smVar2 = smVar3;
                juVar4 = juVar3;
                smVar = smVar2;
                juVar3 = juVar4;
                max = Math.max(j3 - (ar.i().a() - a2), 0);
                j = a;
                juVar = juVar3;
                j3 = max;
            }
            a(smVar);
            return juVar == null ? new ju(1) : juVar;
        }
    }

    public ju a(List<jn> list) {
        b.a("Starting mediation.");
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        List arrayList = new ArrayList();
        for (jn jnVar : list) {
            b.c("Trying mediation network: " + jnVar.b);
            for (String jrVar : jnVar.c) {
                jr jrVar2 = new jr(this.c, jrVar, this.b, this.d, jnVar, this.a.c, this.a.d, this.a.k, this.e, this.l, this.a.z, this.a.n);
                sm a = qq.a(newCachedThreadPool, new jy(this, jrVar2));
                this.k.put(a, jrVar2);
                arrayList.add(a);
            }
        }
        switch (this.h) {
            case WireMessage.WIRE_CONTROL /*2*/:
                return c(arrayList);
            default:
                return b(arrayList);
        }
    }

    public void a() {
        synchronized (this.i) {
            this.j = true;
            for (jr a : this.k.values()) {
                a.a();
            }
        }
    }
}
