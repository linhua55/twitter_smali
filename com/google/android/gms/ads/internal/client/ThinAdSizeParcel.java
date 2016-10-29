package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.internal.oi;

@oi
public class ThinAdSizeParcel extends AdSizeParcel {
    public ThinAdSizeParcel(AdSizeParcel adSizeParcel) {
        super(adSizeParcel.a, adSizeParcel.b, adSizeParcel.c, adSizeParcel.d, adSizeParcel.e, adSizeParcel.f, adSizeParcel.g, adSizeParcel.h, adSizeParcel.i, adSizeParcel.j, adSizeParcel.k);
    }

    public void writeToParcel(Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, this.a);
        a.a(parcel, 2, this.b, false);
        a.a(parcel, 3, this.c);
        a.a(parcel, 6, this.f);
        a.a(parcel, a);
    }
}
