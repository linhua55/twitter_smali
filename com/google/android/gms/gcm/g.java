package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class g implements Creator<PendingCallback> {
    g() {
    }

    public PendingCallback a(Parcel parcel) {
        return new PendingCallback(parcel);
    }

    public PendingCallback[] a(int i) {
        return new PendingCallback[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
