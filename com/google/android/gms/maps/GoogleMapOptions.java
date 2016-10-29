package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.CameraPosition;
import if;
import kd;

public final class GoogleMapOptions implements SafeParcelable {
    public static final ag CREATOR;
    private final int a;
    private Boolean b;
    private Boolean c;
    private int d;
    private CameraPosition e;
    private Boolean f;
    private Boolean g;
    private Boolean h;
    private Boolean i;
    private Boolean j;
    private Boolean k;
    private Boolean l;
    private Boolean m;
    private Boolean n;

    static {
        CREATOR = new ag();
    }

    public GoogleMapOptions() {
        this.d = -1;
        this.a = 1;
    }

    GoogleMapOptions(int i, byte b, byte b2, int i2, CameraPosition cameraPosition, byte b3, byte b4, byte b5, byte b6, byte b7, byte b8, byte b9, byte b10, byte b11) {
        this.d = -1;
        this.a = i;
        this.b = kd.a(b);
        this.c = kd.a(b2);
        this.d = i2;
        this.e = cameraPosition;
        this.f = kd.a(b3);
        this.g = kd.a(b4);
        this.h = kd.a(b5);
        this.i = kd.a(b6);
        this.j = kd.a(b7);
        this.k = kd.a(b8);
        this.l = kd.a(b9);
        this.m = kd.a(b10);
        this.n = kd.a(b11);
    }

    public static GoogleMapOptions a(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, if.MapAttrs);
        GoogleMapOptions googleMapOptions = new GoogleMapOptions();
        if (obtainAttributes.hasValue(if.MapAttrs_mapType)) {
            googleMapOptions.a(obtainAttributes.getInt(if.MapAttrs_mapType, -1));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_zOrderOnTop)) {
            googleMapOptions.a(obtainAttributes.getBoolean(if.MapAttrs_zOrderOnTop, false));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_useViewLifecycle)) {
            googleMapOptions.b(obtainAttributes.getBoolean(if.MapAttrs_useViewLifecycle, false));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_uiCompass)) {
            googleMapOptions.d(obtainAttributes.getBoolean(if.MapAttrs_uiCompass, true));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_uiRotateGestures)) {
            googleMapOptions.h(obtainAttributes.getBoolean(if.MapAttrs_uiRotateGestures, true));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_uiScrollGestures)) {
            googleMapOptions.e(obtainAttributes.getBoolean(if.MapAttrs_uiScrollGestures, true));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_uiTiltGestures)) {
            googleMapOptions.g(obtainAttributes.getBoolean(if.MapAttrs_uiTiltGestures, true));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_uiZoomGestures)) {
            googleMapOptions.f(obtainAttributes.getBoolean(if.MapAttrs_uiZoomGestures, true));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_uiZoomControls)) {
            googleMapOptions.c(obtainAttributes.getBoolean(if.MapAttrs_uiZoomControls, true));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_liteMode)) {
            googleMapOptions.i(obtainAttributes.getBoolean(if.MapAttrs_liteMode, false));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_uiMapToolbar)) {
            googleMapOptions.j(obtainAttributes.getBoolean(if.MapAttrs_uiMapToolbar, true));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_ambientEnabled)) {
            googleMapOptions.k(obtainAttributes.getBoolean(if.MapAttrs_ambientEnabled, false));
        }
        googleMapOptions.a(CameraPosition.a(context, attributeSet));
        obtainAttributes.recycle();
        return googleMapOptions;
    }

    int a() {
        return this.a;
    }

    public GoogleMapOptions a(int i) {
        this.d = i;
        return this;
    }

    public GoogleMapOptions a(CameraPosition cameraPosition) {
        this.e = cameraPosition;
        return this;
    }

    public GoogleMapOptions a(boolean z) {
        this.b = Boolean.valueOf(z);
        return this;
    }

    byte b() {
        return kd.a(this.b);
    }

    public GoogleMapOptions b(boolean z) {
        this.c = Boolean.valueOf(z);
        return this;
    }

    byte c() {
        return kd.a(this.c);
    }

    public GoogleMapOptions c(boolean z) {
        this.f = Boolean.valueOf(z);
        return this;
    }

    byte d() {
        return kd.a(this.f);
    }

    public GoogleMapOptions d(boolean z) {
        this.g = Boolean.valueOf(z);
        return this;
    }

    public int describeContents() {
        return 0;
    }

    byte e() {
        return kd.a(this.g);
    }

    public GoogleMapOptions e(boolean z) {
        this.h = Boolean.valueOf(z);
        return this;
    }

    byte f() {
        return kd.a(this.h);
    }

    public GoogleMapOptions f(boolean z) {
        this.i = Boolean.valueOf(z);
        return this;
    }

    byte g() {
        return kd.a(this.i);
    }

    public GoogleMapOptions g(boolean z) {
        this.j = Boolean.valueOf(z);
        return this;
    }

    byte h() {
        return kd.a(this.j);
    }

    public GoogleMapOptions h(boolean z) {
        this.k = Boolean.valueOf(z);
        return this;
    }

    byte i() {
        return kd.a(this.k);
    }

    public GoogleMapOptions i(boolean z) {
        this.l = Boolean.valueOf(z);
        return this;
    }

    byte j() {
        return kd.a(this.l);
    }

    public GoogleMapOptions j(boolean z) {
        this.m = Boolean.valueOf(z);
        return this;
    }

    byte k() {
        return kd.a(this.m);
    }

    public GoogleMapOptions k(boolean z) {
        this.n = Boolean.valueOf(z);
        return this;
    }

    byte l() {
        return kd.a(this.n);
    }

    public int m() {
        return this.d;
    }

    public CameraPosition n() {
        return this.e;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ag.a(this, parcel, i);
    }
}
