package com.twitter.model.topic;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class k implements Creator<TwitterTopic> {
    k() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TwitterTopic a(Parcel parcel) {
        return new TwitterTopic(parcel);
    }

    public TwitterTopic[] a(int i) {
        return new TwitterTopic[i];
    }
}
