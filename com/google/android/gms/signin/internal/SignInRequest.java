package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class SignInRequest implements SafeParcelable {
    public static final Creator<SignInRequest> CREATOR;
    final int a;
    final ResolveAccountRequest b;

    static {
        CREATOR = new m();
    }

    SignInRequest(int i, ResolveAccountRequest resolveAccountRequest) {
        this.a = i;
        this.b = resolveAccountRequest;
    }

    public SignInRequest(ResolveAccountRequest resolveAccountRequest) {
        this(1, resolveAccountRequest);
    }

    public ResolveAccountRequest a() {
        return this.b;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        m.a(this, parcel, i);
    }
}
