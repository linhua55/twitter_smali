package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.w;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class FusedLocationProviderResult implements w, SafeParcelable {
    public static final Creator<FusedLocationProviderResult> CREATOR;
    public static final FusedLocationProviderResult a;
    private final int b;
    private final Status c;

    static {
        a = new FusedLocationProviderResult(Status.a);
        CREATOR = new j();
    }

    FusedLocationProviderResult(int i, Status status) {
        this.b = i;
        this.c = status;
    }

    public FusedLocationProviderResult(Status status) {
        this(1, status);
    }

    public Status a() {
        return this.c;
    }

    public int b() {
        return this.b;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        j.a(this, parcel, i);
    }
}
