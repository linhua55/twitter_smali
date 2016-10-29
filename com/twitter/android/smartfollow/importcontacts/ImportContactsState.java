package com.twitter.android.smartfollow.importcontacts;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class ImportContactsState implements Parcelable {
    public static final Creator<ImportContactsState> CREATOR;

    static {
        CREATOR = new c();
    }

    protected ImportContactsState(Parcel parcel) {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
    }
}
