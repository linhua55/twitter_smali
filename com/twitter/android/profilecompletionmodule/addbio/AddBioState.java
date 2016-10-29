package com.twitter.android.profilecompletionmodule.addbio;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class AddBioState implements Parcelable {
    public static final Creator<AddBioState> CREATOR;
    public String a;

    static {
        CREATOR = new e();
    }

    protected AddBioState(Parcel parcel) {
        this.a = parcel.readString();
    }

    public AddBioState(String str) {
        this.a = str;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
    }
}
