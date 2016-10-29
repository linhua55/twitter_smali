package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.location.internal.ParcelableGeofence;
import java.util.List;

public class m implements Creator<GeofencingRequest> {
    static void a(GeofencingRequest geofencingRequest, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.c(parcel, 1, geofencingRequest.b(), false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, geofencingRequest.a());
        a.a(parcel, 2, geofencingRequest.c());
        a.a(parcel, a);
    }

    public GeofencingRequest a(Parcel parcel) {
        int i = 0;
        int b = zza.b(parcel);
        List list = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    list = zza.c(parcel, a, ParcelableGeofence.CREATOR);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i = zza.f(parcel, a);
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    i2 = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new GeofencingRequest(i2, list, i);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public GeofencingRequest[] a(int i) {
        return new GeofencingRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
