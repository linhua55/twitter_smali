package com.twitter.android.profilecompletionmodule.chooselocation;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.android.LocationState;

/* compiled from: Twttr */
public class ChooseLocationState implements Parcelable {
    public static final Creator<ChooseLocationState> CREATOR;
    public LocationState a;
    public String b;

    static {
        CREATOR = new f();
    }

    public ChooseLocationState(LocationState locationState, String str) {
        this.a = locationState;
        this.b = str;
    }

    protected ChooseLocationState(Parcel parcel) {
        this.b = parcel.readString();
        this.a = (LocationState) parcel.readParcelable(LocationState.class.getClassLoader());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeParcelable(this.a, i);
    }
}
