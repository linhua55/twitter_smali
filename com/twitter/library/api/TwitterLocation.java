package com.twitter.library.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class TwitterLocation implements Parcelable {
    public static final Creator<TwitterLocation> CREATOR;
    private final String a;
    private final String b;
    private final String c;
    private final long d;

    static {
        CREATOR = new ar();
    }

    public TwitterLocation(String str, long j, String str2, String str3) {
        this.a = str;
        this.d = j;
        this.b = str2;
        this.c = str3;
    }

    public TwitterLocation(String str, long j) {
        this.a = str;
        this.d = j;
        this.b = null;
        this.c = null;
    }

    public TwitterLocation(Parcel parcel) {
        this.a = parcel.readString();
        this.d = parcel.readLong();
        this.b = parcel.readString();
        this.c = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public long d() {
        return this.d;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeLong(this.d);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
    }
}
