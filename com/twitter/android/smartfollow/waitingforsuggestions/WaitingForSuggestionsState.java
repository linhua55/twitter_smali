package com.twitter.android.smartfollow.waitingforsuggestions;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class WaitingForSuggestionsState implements Parcelable {
    public static final Creator<WaitingForSuggestionsState> CREATOR;
    public int a;
    public int b;
    public String c;
    public boolean d;
    public boolean e;

    static {
        CREATOR = new f();
    }

    public WaitingForSuggestionsState(int i, String str, boolean z, boolean z2, int i2) {
        this.a = i;
        this.c = str;
        this.d = z;
        this.e = z2;
        this.b = i2;
    }

    protected WaitingForSuggestionsState(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.a = parcel.readInt();
        this.c = parcel.readString();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.d = z;
        if (parcel.readInt() != 1) {
            z2 = false;
        }
        this.e = z2;
        this.b = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        parcel.writeInt(this.a);
        parcel.writeString(this.c);
        if (this.d) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (!this.e) {
            i3 = 0;
        }
        parcel.writeInt(i3);
        parcel.writeInt(this.b);
    }
}
