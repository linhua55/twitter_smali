package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class az implements Creator<WebsiteAssetsLog> {
    az() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public WebsiteAssetsLog a(Parcel parcel) {
        return new WebsiteAssetsLog(parcel);
    }

    public WebsiteAssetsLog[] a(int i) {
        return new WebsiteAssetsLog[i];
    }
}
