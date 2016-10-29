package com.twitter.media.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class MediaDescriptor implements Parcelable {
    public static final Creator<MediaDescriptor> CREATOR;
    public final String a;
    public final boolean b;

    static {
        CREATOR = new f();
    }

    public MediaDescriptor(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readByte() != null;
    }

    public MediaDescriptor(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeByte((byte) (this.b ? 1 : 0));
    }
}
