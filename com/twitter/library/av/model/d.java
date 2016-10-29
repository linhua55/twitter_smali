package com.twitter.library.av.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class d implements Creator<PeriscopeMedia> {
    d() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public PeriscopeMedia a(Parcel parcel) {
        return new PeriscopeMedia(parcel);
    }

    public PeriscopeMedia[] a(int i) {
        return new PeriscopeMedia[i];
    }
}
