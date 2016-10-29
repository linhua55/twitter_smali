package com.google.android.gms.ads.internal.util.client;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oi;

@oi
public final class VersionInfoParcel implements SafeParcelable {
    public static final c CREATOR;
    public final int a;
    public String b;
    public int c;
    public int d;
    public boolean e;

    static {
        CREATOR = new c();
    }

    public VersionInfoParcel(int i, int i2, boolean z) {
        this(1, "afma-sdk-a-v" + i + "." + i2 + "." + (z ? "0" : "1"), i, i2, z);
    }

    VersionInfoParcel(int i, String str, int i2, int i3, boolean z) {
        this.a = i;
        this.b = str;
        this.c = i2;
        this.d = i3;
        this.e = z;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        c.a(this, parcel, i);
    }
}
