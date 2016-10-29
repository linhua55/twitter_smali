package com.twitter.android.smartfollow.interestpicker;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class InterestPickerState implements Parcelable {
    public static final Creator<InterestPickerState> CREATOR;

    static {
        CREATOR = new d();
    }

    protected InterestPickerState(Parcel parcel) {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
    }
}
