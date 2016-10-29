package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import oh;
import oi;

public final class TileOverlayOptions implements SafeParcelable {
    public static final z CREATOR;
    private final int a;
    private oh b;
    private k c;
    private boolean d;
    private float e;
    private boolean f;

    static {
        CREATOR = new z();
    }

    public TileOverlayOptions() {
        this.d = true;
        this.f = true;
        this.a = 1;
    }

    TileOverlayOptions(int i, IBinder iBinder, boolean z, float f, boolean z2) {
        this.d = true;
        this.f = true;
        this.a = i;
        this.b = oi.a(iBinder);
        this.c = this.b == null ? null : new j(this);
        this.d = z;
        this.e = f;
        this.f = z2;
    }

    int a() {
        return this.a;
    }

    IBinder b() {
        return this.b.asBinder();
    }

    public float c() {
        return this.e;
    }

    public boolean d() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    public boolean e() {
        return this.f;
    }

    public void writeToParcel(Parcel parcel, int i) {
        z.a(this, parcel, i);
    }
}
