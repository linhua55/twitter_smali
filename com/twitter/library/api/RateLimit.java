package com.twitter.library.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class RateLimit implements Parcelable {
    public static final Creator<RateLimit> CREATOR;
    public final int a;
    public final long b;
    private int c;

    static {
        CREATOR = new ae();
    }

    public RateLimit(int i, int i2, long j) {
        this.c = i;
        this.a = i2;
        this.b = j;
    }

    public RateLimit(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readLong();
        this.c = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeLong(this.b);
        parcel.writeInt(this.c);
    }
}
