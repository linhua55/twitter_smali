package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.squareup.okhttp.v_1_5_1.internal.http.StatusLine;
import defpackage.bdd;

public final class LocationRequest implements SafeParcelable {
    public static final h CREATOR;
    int a;
    long b;
    long c;
    boolean d;
    long e;
    int f;
    float g;
    long h;
    private final int i;

    static {
        CREATOR = new h();
    }

    public LocationRequest() {
        this.i = 1;
        this.a = bdd.AppCompatTheme_checkboxStyle;
        this.b = 3600000;
        this.c = 600000;
        this.d = false;
        this.e = PtsTimestampAdjuster.DO_NOT_OFFSET;
        this.f = Integer.MAX_VALUE;
        this.g = 0.0f;
        this.h = 0;
    }

    LocationRequest(int i, int i2, long j, long j2, boolean z, long j3, int i3, float f, long j4) {
        this.i = i;
        this.a = i2;
        this.b = j;
        this.c = j2;
        this.d = z;
        this.e = j3;
        this.f = i3;
        this.g = f;
        this.h = j4;
    }

    public static LocationRequest a() {
        return new LocationRequest();
    }

    private static void b(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("invalid displacement: " + f);
        }
    }

    public static String c(int i) {
        switch (i) {
            case StatusLine.HTTP_CONTINUE /*100*/:
                return "PRIORITY_HIGH_ACCURACY";
            case bdd.AppCompatTheme_checkboxStyle /*102*/:
                return "PRIORITY_BALANCED_POWER_ACCURACY";
            case bdd.AppCompatTheme_editTextStyle /*104*/:
                return "PRIORITY_LOW_POWER";
            case bdd.AppCompatTheme_radioButtonStyle /*105*/:
                return "PRIORITY_NO_POWER";
            default:
                return "???";
        }
    }

    private static void c(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("invalid interval: " + j);
        }
    }

    private static void d(int i) {
        switch (i) {
            case StatusLine.HTTP_CONTINUE /*100*/:
            case bdd.AppCompatTheme_checkboxStyle /*102*/:
            case bdd.AppCompatTheme_editTextStyle /*104*/:
            case bdd.AppCompatTheme_radioButtonStyle /*105*/:
            default:
                throw new IllegalArgumentException("invalid quality: " + i);
        }
    }

    public LocationRequest a(float f) {
        b(f);
        this.g = f;
        return this;
    }

    public LocationRequest a(int i) {
        d(i);
        this.a = i;
        return this;
    }

    public LocationRequest a(long j) {
        c(j);
        this.b = j;
        if (!this.d) {
            this.c = (long) (((double) this.b) / 6.0d);
        }
        return this;
    }

    int b() {
        return this.i;
    }

    public LocationRequest b(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("invalid numUpdates: " + i);
        }
        this.f = i;
        return this;
    }

    public LocationRequest b(long j) {
        c(j);
        this.d = true;
        this.c = j;
        return this;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        return this.a == locationRequest.a && this.b == locationRequest.b && this.c == locationRequest.c && this.d == locationRequest.d && this.e == locationRequest.e && this.f == locationRequest.f && this.g == locationRequest.g;
    }

    public int hashCode() {
        return bj.a(Integer.valueOf(this.a), Long.valueOf(this.b), Long.valueOf(this.c), Boolean.valueOf(this.d), Long.valueOf(this.e), Integer.valueOf(this.f), Float.valueOf(this.g));
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Request[").append(c(this.a));
        if (this.a != bdd.AppCompatTheme_radioButtonStyle) {
            stringBuilder.append(" requested=");
            stringBuilder.append(this.b).append("ms");
        }
        stringBuilder.append(" fastest=");
        stringBuilder.append(this.c).append("ms");
        if (this.h > this.b) {
            stringBuilder.append(" maxWait=");
            stringBuilder.append(this.h).append("ms");
        }
        if (this.e != PtsTimestampAdjuster.DO_NOT_OFFSET) {
            long elapsedRealtime = this.e - SystemClock.elapsedRealtime();
            stringBuilder.append(" expireIn=");
            stringBuilder.append(elapsedRealtime).append("ms");
        }
        if (this.f != Integer.MAX_VALUE) {
            stringBuilder.append(" num=").append(this.f);
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        h.a(this, parcel, i);
    }
}
