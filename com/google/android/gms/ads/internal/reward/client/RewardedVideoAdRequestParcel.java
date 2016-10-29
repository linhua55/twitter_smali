package com.google.android.gms.ads.internal.reward.client;

import android.os.Parcel;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oi;

@oi
public final class RewardedVideoAdRequestParcel implements SafeParcelable {
    public static final m CREATOR;
    public final int a;
    public final AdRequestParcel b;
    public final String c;

    static {
        CREATOR = new m();
    }

    public RewardedVideoAdRequestParcel(int i, AdRequestParcel adRequestParcel, String str) {
        this.a = i;
        this.b = adRequestParcel;
        this.c = str;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        m.a(this, parcel, i);
    }
}
