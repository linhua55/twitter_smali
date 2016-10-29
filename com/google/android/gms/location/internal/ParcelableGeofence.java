package com.google.android.gms.location.internal;

import android.annotation.SuppressLint;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.Locale;

public class ParcelableGeofence implements SafeParcelable {
    public static final ae CREATOR;
    private final int a;
    private final String b;
    private final long c;
    private final short d;
    private final double e;
    private final double f;
    private final float g;
    private final int h;
    private final int i;
    private final int j;

    static {
        CREATOR = new ae();
    }

    public ParcelableGeofence(int i, String str, int i2, short s, double d, double d2, float f, long j, int i3, int i4) {
        a(str);
        a(f);
        a(d, d2);
        int a = a(i2);
        this.a = i;
        this.d = s;
        this.b = str;
        this.e = d;
        this.f = d2;
        this.g = f;
        this.c = j;
        this.h = a;
        this.i = i3;
        this.j = i4;
    }

    private static int a(int i) {
        int i2 = i & 7;
        if (i2 != 0) {
            return i2;
        }
        throw new IllegalArgumentException("No supported transition specified: " + i);
    }

    private static void a(double d, double d2) {
        if (d > 90.0d || d < -90.0d) {
            throw new IllegalArgumentException("invalid latitude: " + d);
        } else if (d2 > 180.0d || d2 < -180.0d) {
            throw new IllegalArgumentException("invalid longitude: " + d2);
        }
    }

    private static void a(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("invalid radius: " + f);
        }
    }

    private static void a(String str) {
        if (str == null || str.length() > 100) {
            throw new IllegalArgumentException("requestId is null or too long: " + str);
        }
    }

    @SuppressLint({"DefaultLocale"})
    private static String b(int i) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return "CIRCLE";
            default:
                return null;
        }
    }

    public int a() {
        return this.a;
    }

    public short b() {
        return this.d;
    }

    public double c() {
        return this.e;
    }

    public double d() {
        return this.f;
    }

    public int describeContents() {
        ae aeVar = CREATOR;
        return 0;
    }

    public float e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof ParcelableGeofence)) {
            return false;
        }
        ParcelableGeofence parcelableGeofence = (ParcelableGeofence) obj;
        return this.g != parcelableGeofence.g ? false : this.e != parcelableGeofence.e ? false : this.f != parcelableGeofence.f ? false : this.d == parcelableGeofence.d;
    }

    public String f() {
        return this.b;
    }

    public long g() {
        return this.c;
    }

    public int h() {
        return this.h;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.e);
        int i = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 31;
        long doubleToLongBits2 = Double.doubleToLongBits(this.f);
        return (((((((i * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + Float.floatToIntBits(this.g)) * 31) + this.d) * 31) + this.h;
    }

    public int i() {
        return this.i;
    }

    public int j() {
        return this.j;
    }

    public String toString() {
        return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", new Object[]{b(this.d), this.b, Integer.valueOf(this.h), Double.valueOf(this.e), Double.valueOf(this.f), Float.valueOf(this.g), Integer.valueOf(this.i / ExoPlayerImplInternal.MSG_SEEK_COMPLETE), Integer.valueOf(this.j), Long.valueOf(this.c)});
    }

    public void writeToParcel(Parcel parcel, int i) {
        ae aeVar = CREATOR;
        ae.a(this, parcel, i);
    }
}
