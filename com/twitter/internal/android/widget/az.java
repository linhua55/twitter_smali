package com.twitter.internal.android.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class az implements Creator<ViewPagerScrollBar$SavedState> {
    az() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ViewPagerScrollBar$SavedState a(Parcel parcel) {
        return new ViewPagerScrollBar$SavedState(parcel);
    }

    public ViewPagerScrollBar$SavedState[] a(int i) {
        return new ViewPagerScrollBar$SavedState[i];
    }
}
