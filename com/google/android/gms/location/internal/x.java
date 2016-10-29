package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.g;
import com.google.android.gms.location.o;
import com.google.android.gms.location.r;
import java.util.HashMap;
import java.util.Map;

public class x {
    private final af<r> a;
    private final Context b;
    private ContentProviderClient c;
    private boolean d;
    private Map<g, aa> e;
    private Map<Object, y> f;

    public x(Context context, af<r> afVar) {
        this.c = null;
        this.d = false;
        this.e = new HashMap();
        this.f = new HashMap();
        this.b = context;
        this.a = afVar;
    }

    private aa a(g gVar, Looper looper) {
        aa aaVar;
        synchronized (this.e) {
            aaVar = (aa) this.e.get(gVar);
            if (aaVar == null) {
                aaVar = new aa(gVar, looper);
            }
            this.e.put(gVar, aaVar);
        }
        return aaVar;
    }

    public Location a() {
        this.a.a();
        try {
            return ((r) this.a.c()).b(this.b.getPackageName());
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    public void a(LocationRequest locationRequest, PendingIntent pendingIntent, l lVar) throws RemoteException {
        this.a.a();
        ((r) this.a.c()).a(LocationRequestUpdateData.a(LocationRequestInternal.a(locationRequest), pendingIntent, lVar));
    }

    public void a(LocationRequest locationRequest, g gVar, Looper looper, l lVar) throws RemoteException {
        this.a.a();
        ((r) this.a.c()).a(LocationRequestUpdateData.a(LocationRequestInternal.a(locationRequest), a(gVar, looper), lVar));
    }

    public void a(g gVar, l lVar) throws RemoteException {
        this.a.a();
        bm.a(gVar, "Invalid null listener");
        synchronized (this.e) {
            r rVar = (aa) this.e.remove(gVar);
            if (this.c != null && this.e.isEmpty()) {
                this.c.release();
                this.c = null;
            }
            if (rVar != null) {
                rVar.a();
                ((r) this.a.c()).a(LocationRequestUpdateData.a(rVar, lVar));
            }
        }
    }

    public void a(boolean z) throws RemoteException {
        this.a.a();
        ((r) this.a.c()).a(z);
        this.d = z;
    }

    public void b() {
        try {
            synchronized (this.e) {
                for (r rVar : this.e.values()) {
                    if (rVar != null) {
                        ((r) this.a.c()).a(LocationRequestUpdateData.a(rVar, null));
                    }
                }
                this.e.clear();
            }
            synchronized (this.f) {
                for (o oVar : this.f.values()) {
                    if (oVar != null) {
                        ((r) this.a.c()).a(LocationRequestUpdateData.a(oVar, null));
                    }
                }
                this.f.clear();
            }
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    public void c() {
        if (this.d) {
            try {
                a(false);
            } catch (Throwable e) {
                throw new IllegalStateException(e);
            }
        }
    }
}
