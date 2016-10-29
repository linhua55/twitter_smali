package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class le implements Creator<PermissionResult> {
    le() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public PermissionResult a(Parcel parcel) {
        return new PermissionResult(parcel);
    }

    public PermissionResult[] a(int i) {
        return new PermissionResult[i];
    }
}
