package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.k;

public final class MarkerOptions implements SafeParcelable {
    public static final q CREATOR;
    private final int a;
    private LatLng b;
    private String c;
    private String d;
    private a e;
    private float f;
    private float g;
    private boolean h;
    private boolean i;
    private boolean j;
    private float k;
    private float l;
    private float m;
    private float n;

    static {
        CREATOR = new q();
    }

    public MarkerOptions() {
        this.f = 0.5f;
        this.g = 1.0f;
        this.i = true;
        this.j = false;
        this.k = 0.0f;
        this.l = 0.5f;
        this.m = 0.0f;
        this.n = 1.0f;
        this.a = 1;
    }

    MarkerOptions(int i, LatLng latLng, String str, String str2, IBinder iBinder, float f, float f2, boolean z, boolean z2, boolean z3, float f3, float f4, float f5, float f6) {
        this.f = 0.5f;
        this.g = 1.0f;
        this.i = true;
        this.j = false;
        this.k = 0.0f;
        this.l = 0.5f;
        this.m = 0.0f;
        this.n = 1.0f;
        this.a = i;
        this.b = latLng;
        this.c = str;
        this.d = str2;
        this.e = iBinder == null ? null : new a(k.a(iBinder));
        this.f = f;
        this.g = f2;
        this.h = z;
        this.i = z2;
        this.j = z3;
        this.k = f3;
        this.l = f4;
        this.m = f5;
        this.n = f6;
    }

    int a() {
        return this.a;
    }

    public MarkerOptions a(float f) {
        this.k = f;
        return this;
    }

    public MarkerOptions a(float f, float f2) {
        this.f = f;
        this.g = f2;
        return this;
    }

    public MarkerOptions a(LatLng latLng) {
        this.b = latLng;
        return this;
    }

    public MarkerOptions a(a aVar) {
        this.e = aVar;
        return this;
    }

    public MarkerOptions a(String str) {
        this.c = str;
        return this;
    }

    public MarkerOptions a(boolean z) {
        this.h = z;
        return this;
    }

    IBinder b() {
        return this.e == null ? null : this.e.a().asBinder();
    }

    public MarkerOptions b(float f) {
        this.n = f;
        return this;
    }

    public MarkerOptions b(float f, float f2) {
        this.l = f;
        this.m = f2;
        return this;
    }

    public MarkerOptions b(String str) {
        this.d = str;
        return this;
    }

    public MarkerOptions b(boolean z) {
        this.i = z;
        return this;
    }

    public LatLng c() {
        return this.b;
    }

    public MarkerOptions c(boolean z) {
        this.j = z;
        return this;
    }

    public String d() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.d;
    }

    public a f() {
        return this.e;
    }

    public float g() {
        return this.f;
    }

    public float h() {
        return this.g;
    }

    public boolean i() {
        return this.h;
    }

    public boolean j() {
        return this.i;
    }

    public boolean k() {
        return this.j;
    }

    public float l() {
        return this.k;
    }

    public float m() {
        return this.l;
    }

    public float n() {
        return this.m;
    }

    public float o() {
        return this.n;
    }

    public void writeToParcel(Parcel parcel, int i) {
        q.a(this, parcel, i);
    }
}
