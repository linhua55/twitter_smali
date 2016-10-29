package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@Deprecated
public class ValidateAccountRequest implements SafeParcelable {
    public static final Creator<ValidateAccountRequest> CREATOR;
    final int a;
    final IBinder b;
    private final int c;
    private final Scope[] d;
    private final Bundle e;
    private final String f;

    static {
        CREATOR = new f();
    }

    ValidateAccountRequest(int i, int i2, IBinder iBinder, Scope[] scopeArr, Bundle bundle, String str) {
        this.a = i;
        this.c = i2;
        this.b = iBinder;
        this.d = scopeArr;
        this.e = bundle;
        this.f = str;
    }

    public int a() {
        return this.c;
    }

    public Scope[] b() {
        return this.d;
    }

    public String c() {
        return this.f;
    }

    public Bundle d() {
        return this.e;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        f.a(this, parcel, i);
    }
}
