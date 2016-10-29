package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import if;

public final class CameraPosition implements SafeParcelable {
    public static final l CREATOR;
    public final LatLng a;
    public final float b;
    public final float c;
    public final float d;
    private final int e;

    static {
        CREATOR = new l();
    }

    CameraPosition(int i, LatLng latLng, float f, float f2, float f3) {
        bm.a(latLng, "null camera target");
        boolean z = 0.0f <= f2 && f2 <= 90.0f;
        bm.b(z, "Tilt needs to be between 0 and 90 inclusive: %s", new Object[]{Float.valueOf(f2)});
        this.e = i;
        this.a = latLng;
        this.b = f;
        this.c = f2 + 0.0f;
        if (((double) f3) <= 0.0d) {
            f3 = (f3 % 360.0f) + 360.0f;
        }
        this.d = f3 % 360.0f;
    }

    public CameraPosition(LatLng latLng, float f, float f2, float f3) {
        this(1, latLng, f, f2, f3);
    }

    public static CameraPosition a(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, if.MapAttrs);
        LatLng latLng = new LatLng((double) (obtainAttributes.hasValue(if.MapAttrs_cameraTargetLat) ? obtainAttributes.getFloat(if.MapAttrs_cameraTargetLat, 0.0f) : 0.0f), (double) (obtainAttributes.hasValue(if.MapAttrs_cameraTargetLng) ? obtainAttributes.getFloat(if.MapAttrs_cameraTargetLng, 0.0f) : 0.0f));
        c b = b();
        b.a(latLng);
        if (obtainAttributes.hasValue(if.MapAttrs_cameraZoom)) {
            b.a(obtainAttributes.getFloat(if.MapAttrs_cameraZoom, 0.0f));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_cameraBearing)) {
            b.c(obtainAttributes.getFloat(if.MapAttrs_cameraBearing, 0.0f));
        }
        if (obtainAttributes.hasValue(if.MapAttrs_cameraTilt)) {
            b.b(obtainAttributes.getFloat(if.MapAttrs_cameraTilt, 0.0f));
        }
        return b.a();
    }

    public static c b() {
        return new c();
    }

    int a() {
        return this.e;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraPosition)) {
            return false;
        }
        CameraPosition cameraPosition = (CameraPosition) obj;
        return this.a.equals(cameraPosition.a) && Float.floatToIntBits(this.b) == Float.floatToIntBits(cameraPosition.b) && Float.floatToIntBits(this.c) == Float.floatToIntBits(cameraPosition.c) && Float.floatToIntBits(this.d) == Float.floatToIntBits(cameraPosition.d);
    }

    public int hashCode() {
        return bj.a(this.a, Float.valueOf(this.b), Float.valueOf(this.c), Float.valueOf(this.d));
    }

    public String toString() {
        return bj.a((Object) this).a("target", this.a).a("zoom", Float.valueOf(this.b)).a("tilt", Float.valueOf(this.c)).a("bearing", Float.valueOf(this.d)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        l.a(this, parcel, i);
    }
}
