package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class AppMetadata implements SafeParcelable {
    public static final ah CREATOR;
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final long f;
    public final long g;
    public final String h;
    public final boolean i;
    public final boolean j;

    static {
        CREATOR = new ah();
    }

    AppMetadata(int i, String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = j;
        this.g = j2;
        this.h = str5;
        if (i >= 3) {
            this.i = z;
        } else {
            this.i = true;
        }
        this.j = z2;
    }

    AppMetadata(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2) {
        bm.a(str);
        this.a = 4;
        this.b = str;
        if (TextUtils.isEmpty(str2)) {
            str2 = null;
        }
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = j;
        this.g = j2;
        this.h = str5;
        this.i = z;
        this.j = z2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ah.a(this, parcel, i);
    }
}
