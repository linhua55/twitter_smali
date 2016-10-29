package com.twitter.android.profilecompletionmodule.addbirthday;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.util.ab;

/* compiled from: Twttr */
public class AddBirthdayState implements Parcelable {
    public static final Creator<AddBirthdayState> CREATOR;
    public ExtendedProfile a;

    static {
        CREATOR = new g();
    }

    protected AddBirthdayState(Parcel parcel) {
        this.a = (ExtendedProfile) ab.a(parcel, ExtendedProfile.a);
    }

    public AddBirthdayState(ExtendedProfile extendedProfile) {
        this.a = extendedProfile;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ab.a(parcel, this.a, ExtendedProfile.a);
    }
}
