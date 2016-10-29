package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.os.RemoteException;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.d;
import com.google.android.gms.maps.model.f;
import com.google.android.gms.maps.model.g;
import com.google.android.gms.maps.model.h;
import ja;
import ny;

public final class c {
    private final ja a;
    private af b;

    protected c(ja jaVar) {
        this.a = (ja) bm.a(jaVar);
    }

    public final d a(CircleOptions circleOptions) {
        try {
            return new d(this.a.a(circleOptions));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final f a(MarkerOptions markerOptions) {
        try {
            ny a = this.a.a(markerOptions);
            return a != null ? new f(a) : null;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final g a(PolygonOptions polygonOptions) {
        try {
            return new g(this.a.a(polygonOptions));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final h a(PolylineOptions polylineOptions) {
        try {
            return new h(this.a.a(polylineOptions));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    ja a() {
        return this.a;
    }

    public final void a(int i, int i2, int i3, int i4) {
        try {
            this.a.a(i, i2, i3, i4);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void a(a aVar) {
        try {
            this.a.a(aVar.a());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void a(a aVar, int i, i iVar) {
        try {
            this.a.a(aVar.a(), i, iVar == null ? null : new o(iVar));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void a(j jVar) {
        if (jVar == null) {
            try {
                this.a.a(null);
                return;
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
        this.a.a(new e(this, jVar));
    }

    public final void a(k kVar) {
        if (kVar == null) {
            try {
                this.a.a(null);
                return;
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
        this.a.a(new g(this, kVar));
    }

    public void a(l lVar) {
        if (lVar == null) {
            try {
                this.a.a(null);
                return;
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
        this.a.a(new h(this, lVar));
    }

    public final void a(m mVar) {
        if (mVar == null) {
            try {
                this.a.a(null);
                return;
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
        this.a.a(new f(this, mVar));
    }

    public final void a(n nVar) {
        a(nVar, null);
    }

    public final void a(n nVar, Bitmap bitmap) {
        try {
            this.a.a(new d(this, nVar), (m) (bitmap != null ? m.a((Object) bitmap) : null));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public final void a(boolean z) {
        try {
            this.a.c(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void b() {
        try {
            this.a.e();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void b(a aVar) {
        try {
            this.a.b(aVar.a());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final af c() {
        try {
            if (this.b == null) {
                this.b = new af(this.a.k());
            }
            return this.b;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
