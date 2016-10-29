package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class SelectionFragment$SelectedItem implements Parcelable {
    public static final Creator<SelectionFragment$SelectedItem> CREATOR;
    public final long a;
    public final String b;

    static {
        CREATOR = new qb();
    }

    public SelectionFragment$SelectedItem(long j, String str) {
        this.a = j;
        this.b = str.trim();
    }

    public SelectionFragment$SelectedItem(Parcel parcel) {
        this.a = parcel.readLong();
        this.b = parcel.readString();
    }

    public boolean equals(Object obj) {
        return (obj instanceof SelectionFragment$SelectedItem) && ((SelectionFragment$SelectedItem) obj).a == this.a;
    }

    public int hashCode() {
        return (int) (this.a ^ (this.a >>> 32));
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(Long.valueOf(this.a));
        parcel.writeString(this.b);
    }
}
