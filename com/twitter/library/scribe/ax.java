package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ax implements Creator<TwitterScribeLog> {
    ax() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TwitterScribeLog a(Parcel parcel) {
        return new TwitterScribeLog(parcel);
    }

    public TwitterScribeLog[] a(int i) {
        return new TwitterScribeLog[i];
    }
}
