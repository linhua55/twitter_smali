package com.google.android.gms.ads.internal.request;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oi;

@oi
public class CapabilityParcel implements SafeParcelable {
    public static final Creator<CapabilityParcel> CREATOR;
    public final int a;
    public final boolean b;
    public final boolean c;
    public final boolean d;

    static {
        CREATOR = new t();
    }

    CapabilityParcel(int i, boolean z, boolean z2, boolean z3) {
        this.a = i;
        this.b = z;
        this.c = z2;
        this.d = z3;
    }

    public CapabilityParcel(boolean z, boolean z2, boolean z3) {
        this(2, z, z2, z3);
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("iap_supported", this.b);
        bundle.putBoolean("default_iap_supported", this.c);
        bundle.putBoolean("app_streaming_supported", this.d);
        return bundle;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        t.a(this, parcel, i);
    }
}
