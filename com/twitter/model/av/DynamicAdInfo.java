package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import bbn;

/* compiled from: Twttr */
public class DynamicAdInfo implements Parcelable {
    public static final Creator<DynamicAdInfo> CREATOR;
    public final DynamicAd a;
    public final String b;

    static {
        CREATOR = new h();
    }

    public DynamicAdInfo(DynamicAd dynamicAd, String str) {
        if (dynamicAd == null && str == null) {
            bbn.a(new IllegalArgumentException("Attempting to create DynamicAdInfo with null data"));
        }
        this.a = dynamicAd;
        this.b = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DynamicAdInfo dynamicAdInfo = (DynamicAdInfo) obj;
        if (this.a == null ? dynamicAdInfo.a != null : !this.a.equals(dynamicAdInfo.a)) {
            return false;
        }
        if (this.b != null) {
            return this.b.equals(dynamicAdInfo.b);
        }
        if (dynamicAdInfo.b != null) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        if (this.a != null) {
            hashCode = this.a.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode *= 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return hashCode + i;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
        parcel.writeString(this.b);
    }
}
