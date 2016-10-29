package com.twitter.model.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.ab;

/* compiled from: Twttr */
public class Translation implements Parcelable {
    public static final Creator<Translation> CREATOR;
    public final long a;
    public final String b;
    public final String c;
    public final String d;
    public final bg e;

    static {
        CREATOR = new bd();
    }

    public Translation(long j, String str, String str2, String str3, bg bgVar) {
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = bgVar;
    }

    public Translation(Parcel parcel) {
        this.a = parcel.readLong();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = (bg) ab.a(parcel, bg.b);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        ab.a(parcel, this.e, bg.b);
    }
}
