package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import kd;

public final class StreetViewPanoramaOptions implements SafeParcelable {
    public static final ah CREATOR;
    private final int a;
    private StreetViewPanoramaCamera b;
    private String c;
    private LatLng d;
    private Integer e;
    private Boolean f;
    private Boolean g;
    private Boolean h;
    private Boolean i;
    private Boolean j;

    static {
        CREATOR = new ah();
    }

    public StreetViewPanoramaOptions() {
        this.f = Boolean.valueOf(true);
        this.g = Boolean.valueOf(true);
        this.h = Boolean.valueOf(true);
        this.i = Boolean.valueOf(true);
        this.a = 1;
    }

    StreetViewPanoramaOptions(int i, StreetViewPanoramaCamera streetViewPanoramaCamera, String str, LatLng latLng, Integer num, byte b, byte b2, byte b3, byte b4, byte b5) {
        this.f = Boolean.valueOf(true);
        this.g = Boolean.valueOf(true);
        this.h = Boolean.valueOf(true);
        this.i = Boolean.valueOf(true);
        this.a = i;
        this.b = streetViewPanoramaCamera;
        this.d = latLng;
        this.e = num;
        this.c = str;
        this.f = kd.a(b);
        this.g = kd.a(b2);
        this.h = kd.a(b3);
        this.i = kd.a(b4);
        this.j = kd.a(b5);
    }

    int a() {
        return this.a;
    }

    byte b() {
        return kd.a(this.f);
    }

    byte c() {
        return kd.a(this.g);
    }

    byte d() {
        return kd.a(this.h);
    }

    public int describeContents() {
        return 0;
    }

    byte e() {
        return kd.a(this.i);
    }

    byte f() {
        return kd.a(this.j);
    }

    public StreetViewPanoramaCamera g() {
        return this.b;
    }

    public LatLng h() {
        return this.d;
    }

    public Integer i() {
        return this.e;
    }

    public String j() {
        return this.c;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ah.a(this, parcel, i);
    }
}
