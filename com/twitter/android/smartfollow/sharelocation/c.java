package com.twitter.android.smartfollow.sharelocation;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class c implements Creator<ShareLocationState> {
    c() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ShareLocationState a(Parcel parcel) {
        return new ShareLocationState(parcel);
    }

    public ShareLocationState[] a(int i) {
        return new ShareLocationState[i];
    }
}
