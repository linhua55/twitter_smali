package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.internal.ParcelableGeofence;
import java.util.List;

public class GeofencingRequest implements SafeParcelable {
    public static final Creator<GeofencingRequest> CREATOR;
    private final int a;
    private final List<ParcelableGeofence> b;
    private final int c;

    static {
        CREATOR = new m();
    }

    GeofencingRequest(int i, List<ParcelableGeofence> list, int i2) {
        this.a = i;
        this.b = list;
        this.c = i2;
    }

    public int a() {
        return this.a;
    }

    public List<ParcelableGeofence> b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        m.a(this, parcel, i);
    }
}
