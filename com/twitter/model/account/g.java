package com.twitter.model.account;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class g implements Creator<OAuthToken> {
    g() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public OAuthToken a(Parcel parcel) {
        return new OAuthToken(parcel);
    }

    public OAuthToken[] a(int i) {
        return new OAuthToken[i];
    }
}
