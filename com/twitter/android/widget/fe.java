package com.twitter.android.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.widget.TopicView.TopicData;

/* compiled from: Twttr */
final class fe implements Creator<TopicData> {
    fe() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TopicData a(Parcel parcel) {
        return new TopicData(parcel);
    }

    public TopicData[] a(int i) {
        return new TopicData[i];
    }
}
