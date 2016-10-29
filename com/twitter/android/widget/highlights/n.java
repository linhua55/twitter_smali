package com.twitter.android.widget.highlights;

import android.os.Parcel;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;

/* compiled from: Twttr */
final class n implements ParcelableCompatCreatorCallbacks<StoriesViewPager$SavedState> {
    n() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return a(parcel, classLoader);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public StoriesViewPager$SavedState a(Parcel parcel, ClassLoader classLoader) {
        return new StoriesViewPager$SavedState(parcel, classLoader);
    }

    public StoriesViewPager$SavedState[] a(int i) {
        return new StoriesViewPager$SavedState[i];
    }
}
