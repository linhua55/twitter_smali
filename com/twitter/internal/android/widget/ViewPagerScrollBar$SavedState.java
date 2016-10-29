package com.twitter.internal.android.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

/* compiled from: Twttr */
class ViewPagerScrollBar$SavedState extends BaseSavedState {
    public static final Creator<ViewPagerScrollBar$SavedState> CREATOR;
    public int a;
    public int b;

    static {
        CREATOR = new az();
    }

    ViewPagerScrollBar$SavedState(Parcel parcel) {
        super(parcel);
        this.a = parcel.readInt();
        this.b = parcel.readInt();
    }

    ViewPagerScrollBar$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
    }
}
