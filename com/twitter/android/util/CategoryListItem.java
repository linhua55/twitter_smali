package com.twitter.android.util;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class CategoryListItem implements Parcelable {
    public static final Creator<CategoryListItem> CREATOR;
    private final String a;
    private final String b;
    private final int c;

    static {
        CREATOR = new m();
    }

    public CategoryListItem(String str, String str2) {
        this(str, str2, 1);
    }

    public CategoryListItem(String str, String str2, int i) {
        this.a = str;
        this.b = str2;
        this.c = i;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public boolean d() {
        return this.c == 2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c);
    }

    public CategoryListItem(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readInt();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CategoryListItem categoryListItem = (CategoryListItem) obj;
        if (categoryListItem.a().equalsIgnoreCase(a()) && categoryListItem.b().equalsIgnoreCase(b()) && categoryListItem.c() == c()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int i2 = this.c * 31;
        if (this.a != null) {
            hashCode = this.a.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + i2) * 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return hashCode + i;
    }
}
