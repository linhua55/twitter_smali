package com.twitter.android.smartfollow.sharelocation;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class ShareLocationState implements Parcelable {
    public static final Creator<ShareLocationState> CREATOR;

    static {
        CREATOR = new c();
    }

    protected ShareLocationState(Parcel parcel) {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
    }
}
