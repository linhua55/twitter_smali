package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
class Flow$Options implements Parcelable {
    public static final Creator<Flow$Options> CREATOR;
    public boolean a;
    public boolean b;
    public int c;
    public boolean d;
    public boolean e;
    public boolean f;

    static {
        CREATOR = new fs();
    }

    protected Flow$Options() {
        this.a = true;
        this.b = false;
        this.c = 2131363811;
        this.d = false;
        this.e = true;
        this.f = true;
    }

    protected Flow$Options(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.a = true;
        this.b = false;
        this.c = 2131363811;
        this.d = false;
        this.e = true;
        this.f = true;
        this.a = parcel.readByte() != null;
        if (parcel.readByte() != null) {
            z = true;
        } else {
            z = false;
        }
        this.b = z;
        this.c = parcel.readInt();
        if (parcel.readByte() != null) {
            z = true;
        } else {
            z = false;
        }
        this.d = z;
        if (parcel.readByte() != null) {
            z = true;
        } else {
            z = false;
        }
        this.e = z;
        if (parcel.readByte() == null) {
            z2 = false;
        }
        this.f = z2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        parcel.writeByte((byte) (this.a ? 1 : 0));
        if (this.b) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeByte((byte) i2);
        parcel.writeInt(this.c);
        if (this.d) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeByte((byte) i2);
        if (this.e) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeByte((byte) i2);
        if (!this.f) {
            i3 = 0;
        }
        parcel.writeByte((byte) i3);
    }

    public int describeContents() {
        return 0;
    }
}
