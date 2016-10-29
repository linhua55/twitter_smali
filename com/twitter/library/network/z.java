package com.twitter.library.network;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class z implements Creator<OAuth2Token> {
    z() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public OAuth2Token a(Parcel parcel) {
        return new OAuth2Token(parcel);
    }

    public OAuth2Token[] a(int i) {
        return new OAuth2Token[i];
    }
}
