package com.twitter.library.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class ActivitySummary implements Parcelable {
    public static final Creator<ActivitySummary> CREATOR;
    public final String a;
    public final String b;
    public final long[] c;
    public final long[] d;

    static {
        CREATOR = new c();
    }

    public ActivitySummary(String str, String str2, long[] jArr, long[] jArr2) {
        this.a = str;
        this.b = str2;
        this.c = jArr;
        this.d = jArr2;
    }

    public ActivitySummary(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.createLongArray();
        this.d = parcel.createLongArray();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeLongArray(this.c);
        parcel.writeLongArray(this.d);
    }

    public static boolean a(String str) {
        return (str == null || "0".equals(str)) ? false : true;
    }
}
