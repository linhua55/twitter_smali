package com.twitter.android.news;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class m implements Creator<NewsDetailScribeItem> {
    m() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public NewsDetailScribeItem a(Parcel parcel) {
        return new NewsDetailScribeItem(parcel);
    }

    public NewsDetailScribeItem[] a(int i) {
        return new NewsDetailScribeItem[i];
    }
}
