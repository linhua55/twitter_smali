package com.twitter.model.account;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class LoginResponse implements Parcelable {
    public static final Creator<LoginResponse> CREATOR;
    public final OAuthToken a;
    public final LoginVerificationRequiredResponse b;
    public final String c;
    public final int d;

    static {
        CREATOR = new c();
    }

    public LoginResponse(int i, String str, String str2, String str3) {
        this.d = i;
        this.a = new OAuthToken(str, str2);
        this.b = null;
        this.c = str3;
    }

    public LoginResponse(int i, long j, String str, int i2, String str2, int i3) {
        this.d = i;
        this.a = null;
        this.b = new LoginVerificationRequiredResponse(j, str, i2, str2, i3);
        this.c = null;
    }

    public LoginResponse(Parcel parcel) {
        this.d = parcel.readInt();
        this.a = (OAuthToken) parcel.readParcelable(OAuthToken.class.getClassLoader());
        this.b = (LoginVerificationRequiredResponse) parcel.readParcelable(LoginVerificationRequiredResponse.class.getClassLoader());
        this.c = null;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.d);
        parcel.writeParcelable(this.a, 0);
        parcel.writeParcelable(this.b, 0);
    }
}
