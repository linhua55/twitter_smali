package com.google.android.gms.maps;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class MapView extends FrameLayout {
    private final r a;
    private c b;

    public MapView(Context context) {
        super(context);
        this.a = new r(this, context, null);
        e();
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new r(this, context, GoogleMapOptions.a(context, attributeSet));
        e();
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new r(this, context, GoogleMapOptions.a(context, attributeSet));
        e();
    }

    public MapView(Context context, GoogleMapOptions googleMapOptions) {
        super(context);
        this.a = new r(this, context, googleMapOptions);
        e();
    }

    private void e() {
        setClickable(true);
    }

    public final void a() {
        this.a.b();
    }

    public final void a(Bundle bundle) {
        this.a.a(bundle);
        if (this.a.a() == null) {
            b.b(this);
        }
    }

    public void a(t tVar) {
        bm.b("getMapAsync() must be called on the main thread");
        this.a.a(tVar);
    }

    public final void b() {
        this.a.c();
    }

    public final void b(Bundle bundle) {
        this.a.b(bundle);
    }

    public final void c() {
        this.a.e();
    }

    public final void d() {
        this.a.f();
    }

    @Deprecated
    public final c getMap() {
        if (this.b != null) {
            return this.b;
        }
        this.a.g();
        if (this.a.a() == null) {
            return null;
        }
        try {
            this.b = new c(((p) this.a.a()).f().a());
            return this.b;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
