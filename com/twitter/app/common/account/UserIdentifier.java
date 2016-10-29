package com.twitter.app.common.account;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class UserIdentifier implements Parcelable {
    public static final Creator<UserIdentifier> CREATOR;
    public static final UserIdentifier a;
    private final long b;

    static {
        CREATOR = new g();
        a = new UserIdentifier(-1);
    }

    public UserIdentifier(long j) {
        this.b = j;
    }

    protected UserIdentifier(Parcel parcel) {
        this.b = parcel.readLong();
    }

    public boolean a() {
        return this.b > 0;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
    }

    public String toString() {
        return c();
    }

    public boolean equals(Object obj) {
        return this == obj || (obj != null && (obj instanceof UserIdentifier) && a((UserIdentifier) obj));
    }

    public boolean a(UserIdentifier userIdentifier) {
        return this == userIdentifier || (userIdentifier != null && this.b == userIdentifier.b);
    }

    public int hashCode() {
        return ObjectUtils.a(this.b);
    }

    public long b() {
        return this.b;
    }

    public String c() {
        return String.valueOf(this.b);
    }
}
