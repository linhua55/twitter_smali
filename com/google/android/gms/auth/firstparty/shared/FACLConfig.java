package com.google.android.gms.auth.firstparty.shared;

import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class FACLConfig implements SafeParcelable {
    public static final a CREATOR;
    final int a;
    boolean b;
    String c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;

    static {
        CREATOR = new a();
    }

    FACLConfig(int i, boolean z, String str, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.a = i;
        this.b = z;
        this.c = str;
        this.d = z2;
        this.e = z3;
        this.f = z4;
        this.g = z5;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FACLConfig)) {
            return false;
        }
        FACLConfig fACLConfig = (FACLConfig) obj;
        return this.b == fACLConfig.b && TextUtils.equals(this.c, fACLConfig.c) && this.d == fACLConfig.d && this.e == fACLConfig.e && this.f == fACLConfig.f && this.g == fACLConfig.g;
    }

    public int hashCode() {
        return bj.a(Boolean.valueOf(this.b), this.c, Boolean.valueOf(this.d), Boolean.valueOf(this.e), Boolean.valueOf(this.f), Boolean.valueOf(this.g));
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}
