package com.google.android.gms.ads.internal.formats;

import android.os.Parcel;
import com.google.android.gms.ads.formats.c;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oi;

@oi
public class NativeAdOptionsParcel implements SafeParcelable {
    public static final q CREATOR;
    public final int a;
    public final boolean b;
    public final int c;
    public final boolean d;

    static {
        CREATOR = new q();
    }

    public NativeAdOptionsParcel(int i, boolean z, int i2, boolean z2) {
        this.a = i;
        this.b = z;
        this.c = i2;
        this.d = z2;
    }

    public NativeAdOptionsParcel(c cVar) {
        this(1, cVar.a(), cVar.b(), cVar.c());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        q.a(this, parcel, i);
    }
}
