package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ClientIdentity implements SafeParcelable {
    public static final c CREATOR;
    public final int a;
    public final String b;
    private final int c;

    static {
        CREATOR = new c();
    }

    ClientIdentity(int i, int i2, String str) {
        this.c = i;
        this.a = i2;
        this.b = str;
    }

    int a() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.a == this.a && bj.a(clientIdentity.b, this.b);
    }

    public int hashCode() {
        return this.a;
    }

    public String toString() {
        return String.format("%d:%s", new Object[]{Integer.valueOf(this.a), this.b});
    }

    public void writeToParcel(Parcel parcel, int i) {
        c.a(this, parcel, i);
    }
}
