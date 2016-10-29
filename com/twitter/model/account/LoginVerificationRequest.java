package com.twitter.model.account;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class LoginVerificationRequest implements Parcelable {
    public static final Creator<LoginVerificationRequest> CREATOR;
    public static final LoginVerificationRequest a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final long f;
    public String g;

    static {
        CREATOR = new d();
        a = new LoginVerificationRequest("", "", "", "", "", 0);
    }

    public LoginVerificationRequest(String str, String str2, String str3, String str4, String str5, long j) {
        this.b = str;
        this.c = str2;
        this.g = str3;
        this.d = str4;
        this.e = str5;
        this.f = j;
    }

    public LoginVerificationRequest(String str, String str2, String str3, String str4, long j) {
        this.b = str;
        this.c = str2;
        this.g = "";
        this.d = str3;
        this.e = str4;
        this.f = j;
    }

    public void a(String str) {
        this.g = str;
    }

    public LoginVerificationRequest(Parcel parcel) {
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.g = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readLong();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.g);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeLong(this.f);
    }
}
