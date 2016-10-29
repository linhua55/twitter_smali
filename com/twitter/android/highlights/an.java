package com.twitter.android.highlights;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class an implements Creator<StoryScribeItem> {
    an() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public StoryScribeItem a(Parcel parcel) {
        return new StoryScribeItem(parcel);
    }

    public StoryScribeItem[] a(int i) {
        return new StoryScribeItem[i];
    }
}
