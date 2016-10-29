package com.twitter.android.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

/* compiled from: Twttr */
class ToggleImageButton$SavedState extends BaseSavedState {
    public static final Creator<ToggleImageButton$SavedState> CREATOR;
    public final boolean a;

    static {
        CREATOR = new fd();
    }

    ToggleImageButton$SavedState(Parcelable parcelable, boolean z) {
        super(parcelable);
        this.a = z;
    }

    ToggleImageButton$SavedState(Parcel parcel) {
        boolean z = true;
        super(parcel);
        if (parcel.readInt() != 1) {
            z = false;
        }
        this.a = z;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a ? 1 : 0);
    }
}
