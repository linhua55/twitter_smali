package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class aw implements Creator<TwitterScribeItem> {
    aw() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TwitterScribeItem a(Parcel parcel) {
        return new TwitterScribeItem(parcel);
    }

    public TwitterScribeItem[] a(int i) {
        return new TwitterScribeItem[i];
    }
}
