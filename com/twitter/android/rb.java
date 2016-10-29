package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class rb implements Creator<TabsAdapter$TabSavedState> {
    rb() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TabsAdapter$TabSavedState a(Parcel parcel) {
        return new TabsAdapter$TabSavedState(parcel);
    }

    public TabsAdapter$TabSavedState[] a(int i) {
        return new TabsAdapter$TabSavedState[i];
    }
}
