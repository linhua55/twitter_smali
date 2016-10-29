package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class MonetizationCategory implements Parcelable {
    public static final Creator<MonetizationCategory> CREATOR;
    private final int a;
    private final String b;

    static {
        CREATOR = new r();
    }

    public MonetizationCategory(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public MonetizationCategory(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readString();
    }

    public int a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeString(this.b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MonetizationCategory monetizationCategory = (MonetizationCategory) obj;
        if (this.a == monetizationCategory.a && this.b.equals(monetizationCategory.b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.a * 31) + this.b.hashCode();
    }
}
