package com.google.android.gcm;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class c implements Creator<GCMScribeReporter$GCMDeletedMessageScribeItem> {
    c() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public GCMScribeReporter$GCMDeletedMessageScribeItem a(Parcel parcel) {
        return new GCMScribeReporter$GCMDeletedMessageScribeItem(parcel);
    }

    public GCMScribeReporter$GCMDeletedMessageScribeItem[] a(int i) {
        return new GCMScribeReporter$GCMDeletedMessageScribeItem[i];
    }
}
