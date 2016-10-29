package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

public final class PolylineOptions implements SafeParcelable {
    public static final t CREATOR;
    private final int a;
    private final List<LatLng> b;
    private float c;
    private int d;
    private float e;
    private boolean f;
    private boolean g;
    private boolean h;

    static {
        CREATOR = new t();
    }

    public PolylineOptions() {
        this.c = 10.0f;
        this.d = -16777216;
        this.e = 0.0f;
        this.f = true;
        this.g = false;
        this.h = false;
        this.a = 1;
        this.b = new ArrayList();
    }

    PolylineOptions(int i, List list, float f, int i2, float f2, boolean z, boolean z2, boolean z3) {
        this.c = 10.0f;
        this.d = -16777216;
        this.e = 0.0f;
        this.f = true;
        this.g = false;
        this.h = false;
        this.a = i;
        this.b = list;
        this.c = f;
        this.d = i2;
        this.e = f2;
        this.f = z;
        this.g = z2;
        this.h = z3;
    }

    int a() {
        return this.a;
    }

    public PolylineOptions a(float f) {
        this.c = f;
        return this;
    }

    public PolylineOptions a(int i) {
        this.d = i;
        return this;
    }

    public PolylineOptions a(Iterable<LatLng> iterable) {
        for (LatLng add : iterable) {
            this.b.add(add);
        }
        return this;
    }

    public PolylineOptions a(boolean z) {
        this.f = z;
        return this;
    }

    public PolylineOptions b(float f) {
        this.e = f;
        return this;
    }

    public PolylineOptions b(boolean z) {
        this.g = z;
        return this;
    }

    public List<LatLng> b() {
        return this.b;
    }

    public float c() {
        return this.c;
    }

    public int d() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    public float e() {
        return this.e;
    }

    public boolean f() {
        return this.f;
    }

    public boolean g() {
        return this.g;
    }

    public boolean h() {
        return this.h;
    }

    public void writeToParcel(Parcel parcel, int i) {
        t.a(this, parcel, i);
    }
}
