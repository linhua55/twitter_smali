package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class Scope implements SafeParcelable {
    public static final Creator<Scope> CREATOR;
    final int a;
    private final String b;

    static {
        CREATOR = new ac();
    }

    Scope(int i, String str) {
        bm.a(str, "scopeUri must not be null or empty");
        this.a = i;
        this.b = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public String a() {
        return this.b;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return this == obj ? true : !(obj instanceof Scope) ? false : this.b.equals(((Scope) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        return this.b;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ac.a(this, parcel, i);
    }
}
