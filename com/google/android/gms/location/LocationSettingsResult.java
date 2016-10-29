package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.w;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class LocationSettingsResult implements w, SafeParcelable {
    public static final Creator<LocationSettingsResult> CREATOR;
    private final int a;
    private final Status b;
    private final LocationSettingsStates c;

    static {
        CREATOR = new w();
    }

    LocationSettingsResult(int i, Status status, LocationSettingsStates locationSettingsStates) {
        this.a = i;
        this.b = status;
        this.c = locationSettingsStates;
    }

    public Status a() {
        return this.b;
    }

    public int b() {
        return this.a;
    }

    public LocationSettingsStates c() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        w.a(this, parcel, i);
    }
}
