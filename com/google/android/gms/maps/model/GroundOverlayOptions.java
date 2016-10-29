package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.k;

public final class GroundOverlayOptions implements SafeParcelable {
    public static final n CREATOR;
    private final int a;
    private a b;
    private LatLng c;
    private float d;
    private float e;
    private LatLngBounds f;
    private float g;
    private float h;
    private boolean i;
    private float j;
    private float k;
    private float l;
    private boolean m;

    static {
        CREATOR = new n();
    }

    public GroundOverlayOptions() {
        this.i = true;
        this.j = 0.0f;
        this.k = 0.5f;
        this.l = 0.5f;
        this.m = false;
        this.a = 1;
    }

    GroundOverlayOptions(int i, IBinder iBinder, LatLng latLng, float f, float f2, LatLngBounds latLngBounds, float f3, float f4, boolean z, float f5, float f6, float f7, boolean z2) {
        this.i = true;
        this.j = 0.0f;
        this.k = 0.5f;
        this.l = 0.5f;
        this.m = false;
        this.a = i;
        this.b = new a(k.a(iBinder));
        this.c = latLng;
        this.d = f;
        this.e = f2;
        this.f = latLngBounds;
        this.g = f3;
        this.h = f4;
        this.i = z;
        this.j = f5;
        this.k = f6;
        this.l = f7;
        this.m = z2;
    }

    IBinder a() {
        return this.b.a().asBinder();
    }

    int b() {
        return this.a;
    }

    public LatLng c() {
        return this.c;
    }

    public float d() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    public float e() {
        return this.e;
    }

    public LatLngBounds f() {
        return this.f;
    }

    public float g() {
        return this.g;
    }

    public float h() {
        return this.h;
    }

    public float i() {
        return this.j;
    }

    public float j() {
        return this.k;
    }

    public float k() {
        return this.l;
    }

    public boolean l() {
        return this.i;
    }

    public boolean m() {
        return this.m;
    }

    public void writeToParcel(Parcel parcel, int i) {
        n.a(this, parcel, i);
    }
}
