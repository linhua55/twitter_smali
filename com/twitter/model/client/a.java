package com.twitter.model.client;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<UrlConfiguration> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public UrlConfiguration a(Parcel parcel) {
        return new UrlConfiguration(parcel);
    }

    public UrlConfiguration[] a(int i) {
        return new UrlConfiguration[i];
    }
}
