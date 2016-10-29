package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class av implements Creator<TwitterScribeAssociation> {
    av() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TwitterScribeAssociation a(Parcel parcel) {
        return new TwitterScribeAssociation(parcel, null);
    }

    public TwitterScribeAssociation[] a(int i) {
        return new TwitterScribeAssociation[i];
    }
}
