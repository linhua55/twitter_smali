package com.google.android.gms.common.server;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class FavaDiagnosticsEntity implements SafeParcelable {
    public static final a CREATOR;
    final int a;
    public final String b;
    public final int c;

    static {
        CREATOR = new a();
    }

    public FavaDiagnosticsEntity(int i, String str, int i2) {
        this.a = i;
        this.b = str;
        this.c = i2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}
