package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class k implements Creator<PlacePhotoResult> {
    static void a(PlacePhotoResult placePhotoResult, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, placePhotoResult.a(), i, false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, placePhotoResult.a);
        a.a(parcel, 2, placePhotoResult.b, i, false);
        a.a(parcel, a);
    }

    public PlacePhotoResult a(Parcel parcel) {
        BitmapTeleporter bitmapTeleporter = null;
        int b = zza.b(parcel);
        int i = 0;
        Status status = null;
        while (parcel.dataPosition() < b) {
            int i2;
            BitmapTeleporter bitmapTeleporter2;
            Status status2;
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = i;
                    Status status3 = (Status) zza.a(parcel, a, Status.CREATOR);
                    bitmapTeleporter2 = bitmapTeleporter;
                    status2 = status3;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    bitmapTeleporter2 = (BitmapTeleporter) zza.a(parcel, a, BitmapTeleporter.CREATOR);
                    status2 = status;
                    i2 = i;
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    BitmapTeleporter bitmapTeleporter3 = bitmapTeleporter;
                    status2 = status;
                    i2 = zza.f(parcel, a);
                    bitmapTeleporter2 = bitmapTeleporter3;
                    break;
                default:
                    zza.b(parcel, a);
                    bitmapTeleporter2 = bitmapTeleporter;
                    status2 = status;
                    i2 = i;
                    break;
            }
            i = i2;
            status = status2;
            bitmapTeleporter = bitmapTeleporter2;
        }
        if (parcel.dataPosition() == b) {
            return new PlacePhotoResult(i, status, bitmapTeleporter);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PlacePhotoResult[] a(int i) {
        return new PlacePhotoResult[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
