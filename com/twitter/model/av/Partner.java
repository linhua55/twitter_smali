package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v7.recyclerview.BuildConfig;

/* compiled from: Twttr */
public class Partner implements Parcelable {
    public static final Creator<Partner> CREATOR;
    public static final Partner a;
    private final String b;
    private final String c;

    static {
        CREATOR = new s();
        a = new Partner();
    }

    public Partner() {
        this(BuildConfig.VERSION_NAME);
    }

    public Partner(String str) {
        this.b = str;
        this.c = str.replace(" ", BuildConfig.VERSION_NAME).toLowerCase();
    }

    public String a() {
        return this.c;
    }

    public String b() {
        return this.b;
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public boolean equals(Object obj) {
        return obj != null && getClass() == obj.getClass() && this.b.equals(((Partner) obj).b);
    }

    public String toString() {
        return this.b;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
    }
}
