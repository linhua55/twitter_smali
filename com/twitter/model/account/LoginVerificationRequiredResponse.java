package com.twitter.model.account;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class LoginVerificationRequiredResponse implements Parcelable {
    public static final Creator<LoginVerificationRequiredResponse> CREATOR;
    public final long a;
    public final String b;
    public final int c;
    public final String d;
    public final int e;

    static {
        CREATOR = new e();
    }

    public LoginVerificationRequiredResponse(long j, String str, int i, String str2, int i2) {
        this.a = j;
        this.b = str;
        this.c = i;
        this.d = str2;
        this.e = i2;
    }

    public LoginVerificationRequiredResponse(Parcel parcel) {
        this.a = parcel.readLong();
        this.b = parcel.readString();
        this.c = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
    }
}
