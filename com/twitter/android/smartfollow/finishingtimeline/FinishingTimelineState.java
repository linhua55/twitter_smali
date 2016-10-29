package com.twitter.android.smartfollow.finishingtimeline;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class FinishingTimelineState implements Parcelable {
    public static final Creator<FinishingTimelineState> CREATOR;
    public boolean a;
    public boolean b;
    public String c;
    public int d;
    public int e;

    static {
        CREATOR = new f();
    }

    protected FinishingTimelineState(Parcel parcel) {
        boolean z = true;
        this.a = parcel.readInt() == 1;
        this.c = parcel.readString();
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        if (parcel.readInt() != 1) {
            z = false;
        }
        this.b = z;
    }

    public FinishingTimelineState(boolean z, String str, int i, int i2, boolean z2) {
        this.a = z;
        this.c = str;
        this.d = i;
        this.e = i2;
        this.b = z2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeInt(this.a ? 1 : 0);
        parcel.writeString(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        if (!this.b) {
            i2 = 0;
        }
        parcel.writeInt(i2);
    }

    public int describeContents() {
        return 0;
    }
}
