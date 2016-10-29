package com.twitter.model.account;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class LvEligibilityResponse implements Parcelable {
    public static final Creator<LvEligibilityResponse> CREATOR;
    private final String a;
    private final boolean b;

    static {
        CREATOR = new f();
    }

    public LvEligibilityResponse(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    public LvEligibilityResponse(Parcel parcel) {
        boolean z = true;
        this.a = parcel.readString();
        if (parcel.readByte() != (byte) 1) {
            z = false;
        }
        this.b = z;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
    }

    public String a() {
        return this.a;
    }

    public boolean b() {
        return this.b;
    }
}
