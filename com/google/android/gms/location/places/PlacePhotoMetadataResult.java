package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.w;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class PlacePhotoMetadataResult implements w, SafeParcelable {
    public static final Creator<PlacePhotoMetadataResult> CREATOR;
    final int a;
    final DataHolder b;
    private final Status c;
    private final c d;

    static {
        CREATOR = new j();
    }

    PlacePhotoMetadataResult(int i, Status status, DataHolder dataHolder) {
        this.a = i;
        this.c = status;
        this.b = dataHolder;
        if (dataHolder == null) {
            this.d = null;
        } else {
            this.d = new c(this.b);
        }
    }

    public Status a() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        j.a(this, parcel, i);
    }
}
