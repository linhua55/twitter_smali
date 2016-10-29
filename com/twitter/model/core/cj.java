package com.twitter.model.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class cj implements Creator<TwitterSocialProof> {
    cj() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TwitterSocialProof a(Parcel parcel) {
        return new TwitterSocialProof(parcel);
    }

    public TwitterSocialProof[] a(int i) {
        return new TwitterSocialProof[i];
    }
}
