package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ba implements Creator<WebsiteAsset> {
    ba() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public WebsiteAsset a(Parcel parcel) {
        return new WebsiteAsset(parcel);
    }

    public WebsiteAsset[] a(int i) {
        return new WebsiteAsset[i];
    }
}
