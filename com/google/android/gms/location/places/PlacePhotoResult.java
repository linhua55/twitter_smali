package com.google.android.gms.location.places;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.w;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class PlacePhotoResult implements w, SafeParcelable {
    public static final Creator<PlacePhotoResult> CREATOR;
    final int a;
    final BitmapTeleporter b;
    private final Status c;
    private final Bitmap d;

    static {
        CREATOR = new k();
    }

    PlacePhotoResult(int i, Status status, BitmapTeleporter bitmapTeleporter) {
        this.a = i;
        this.c = status;
        this.b = bitmapTeleporter;
        if (this.b != null) {
            this.d = bitmapTeleporter.a();
        } else {
            this.d = null;
        }
    }

    public Status a() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        return bj.a((Object) this).a("status", this.c).a("bitmap", this.d).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        k.a(this, parcel, i);
    }
}
