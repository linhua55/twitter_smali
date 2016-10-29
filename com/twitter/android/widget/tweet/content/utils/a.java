package com.twitter.android.widget.tweet.content.utils;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<MutableForegroundColorSpan> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MutableForegroundColorSpan a(Parcel parcel) {
        return new MutableForegroundColorSpan(parcel);
    }

    public MutableForegroundColorSpan[] a(int i) {
        return new MutableForegroundColorSpan[i];
    }
}
