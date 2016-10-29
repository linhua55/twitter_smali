package com.twitter.model.account;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class OAuthToken implements Parcelable {
    public static final Creator<OAuthToken> CREATOR;
    public final String a;
    public final String b;

    static {
        CREATOR = new g();
    }

    public OAuthToken(String str, String str2) {
        this.b = str;
        this.a = str2;
    }

    public OAuthToken(Parcel parcel) {
        this.b = parcel.readString();
        this.a = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.a);
    }
}
