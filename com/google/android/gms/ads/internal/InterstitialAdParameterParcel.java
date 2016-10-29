package com.google.android.gms.ads.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oi;

@oi
public final class InterstitialAdParameterParcel implements SafeParcelable {
    public static final aa CREATOR;
    public final int a;
    public final boolean b;
    public final boolean c;
    public final String d;
    public final boolean e;
    public final float f;

    static {
        CREATOR = new aa();
    }

    InterstitialAdParameterParcel(int i, boolean z, boolean z2, String str, boolean z3, float f) {
        this.a = i;
        this.b = z;
        this.c = z2;
        this.d = str;
        this.e = z3;
        this.f = f;
    }

    public InterstitialAdParameterParcel(boolean z, boolean z2, String str, boolean z3, float f) {
        this(2, z, z2, str, z3, f);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        aa.a(this, parcel, i);
    }
}
