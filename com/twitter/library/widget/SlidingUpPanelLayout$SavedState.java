package com.twitter.library.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

/* compiled from: Twttr */
class SlidingUpPanelLayout$SavedState extends BaseSavedState {
    public static final Creator<SlidingUpPanelLayout$SavedState> CREATOR;
    int a;
    int b;
    boolean c;

    static {
        CREATOR = new ad();
    }

    SlidingUpPanelLayout$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    private SlidingUpPanelLayout$SavedState(Parcel parcel) {
        super(parcel);
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readInt() != 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c ? 1 : 0);
    }
}
