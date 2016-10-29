package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

public final class PolygonOptions implements SafeParcelable {
    public static final s CREATOR;
    private final int a;
    private final List<LatLng> b;
    private final List<List<LatLng>> c;
    private float d;
    private int e;
    private int f;
    private float g;
    private boolean h;
    private boolean i;
    private boolean j;

    static {
        CREATOR = new s();
    }

    public PolygonOptions() {
        this.d = 10.0f;
        this.e = -16777216;
        this.f = 0;
        this.g = 0.0f;
        this.h = true;
        this.i = false;
        this.j = false;
        this.a = 1;
        this.b = new ArrayList();
        this.c = new ArrayList();
    }

    PolygonOptions(int i, List<LatLng> list, List list2, float f, int i2, int i3, float f2, boolean z, boolean z2, boolean z3) {
        this.d = 10.0f;
        this.e = -16777216;
        this.f = 0;
        this.g = 0.0f;
        this.h = true;
        this.i = false;
        this.j = false;
        this.a = i;
        this.b = list;
        this.c = list2;
        this.d = f;
        this.e = i2;
        this.f = i3;
        this.g = f2;
        this.h = z;
        this.i = z2;
        this.j = z3;
    }

    int a() {
        return this.a;
    }

    public PolygonOptions a(float f) {
        this.d = f;
        return this;
    }

    public PolygonOptions a(int i) {
        this.e = i;
        return this;
    }

    public PolygonOptions a(Iterable<LatLng> iterable) {
        for (LatLng add : iterable) {
            this.b.add(add);
        }
        return this;
    }

    public PolygonOptions a(boolean z) {
        this.h = z;
        return this;
    }

    public PolygonOptions b(float f) {
        this.g = f;
        return this;
    }

    public PolygonOptions b(int i) {
        this.f = i;
        return this;
    }

    public PolygonOptions b(Iterable<LatLng> iterable) {
        ArrayList arrayList = new ArrayList();
        for (LatLng add : iterable) {
            arrayList.add(add);
        }
        this.c.add(arrayList);
        return this;
    }

    public PolygonOptions b(boolean z) {
        this.i = z;
        return this;
    }

    List b() {
        return this.c;
    }

    public List<LatLng> c() {
        return this.b;
    }

    public float d() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    public int e() {
        return this.e;
    }

    public int f() {
        return this.f;
    }

    public float g() {
        return this.g;
    }

    public boolean h() {
        return this.h;
    }

    public boolean i() {
        return this.i;
    }

    public boolean j() {
        return this.j;
    }

    public void writeToParcel(Parcel parcel, int i) {
        s.a(this, parcel, i);
    }
}
