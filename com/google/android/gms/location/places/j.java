package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class j implements Creator<PlacePhotoMetadataResult> {
    static void a(PlacePhotoMetadataResult placePhotoMetadataResult, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, placePhotoMetadataResult.a(), i, false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, placePhotoMetadataResult.a);
        a.a(parcel, 2, placePhotoMetadataResult.b, i, false);
        a.a(parcel, a);
    }

    public PlacePhotoMetadataResult a(Parcel parcel) {
        DataHolder dataHolder = null;
        int b = zza.b(parcel);
        int i = 0;
        Status status = null;
        while (parcel.dataPosition() < b) {
            int i2;
            DataHolder dataHolder2;
            Status status2;
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = i;
                    Status status3 = (Status) zza.a(parcel, a, Status.CREATOR);
                    dataHolder2 = dataHolder;
                    status2 = status3;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    dataHolder2 = (DataHolder) zza.a(parcel, a, DataHolder.CREATOR);
                    status2 = status;
                    i2 = i;
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    DataHolder dataHolder3 = dataHolder;
                    status2 = status;
                    i2 = zza.f(parcel, a);
                    dataHolder2 = dataHolder3;
                    break;
                default:
                    zza.b(parcel, a);
                    dataHolder2 = dataHolder;
                    status2 = status;
                    i2 = i;
                    break;
            }
            i = i2;
            status = status2;
            dataHolder = dataHolder2;
        }
        if (parcel.dataPosition() == b) {
            return new PlacePhotoMetadataResult(i, status, dataHolder);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PlacePhotoMetadataResult[] a(int i) {
        return new PlacePhotoMetadataResult[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
