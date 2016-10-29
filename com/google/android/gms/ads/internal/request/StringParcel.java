package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oi;

@oi
public class StringParcel implements SafeParcelable {
    public static final Creator<StringParcel> CREATOR;
    final int a;
    String b;

    static {
        CREATOR = new ak();
    }

    StringParcel(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public StringParcel(String str) {
        this.a = 1;
        this.b = str;
    }

    public String a() {
        return this.b;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ak.a(this, parcel, i);
    }
}
