package com.twitter.library.network;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class OAuth2Token implements Parcelable {
    public static final Creator<OAuth2Token> CREATOR;
    public final String a;
    public final String b;

    static {
        CREATOR = new z();
    }

    public OAuth2Token(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public OAuth2Token(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
    }
}
