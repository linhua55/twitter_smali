package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public class v implements Creator<LocationSettingsRequest> {
    static void a(LocationSettingsRequest locationSettingsRequest, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.c(parcel, 1, locationSettingsRequest.b(), false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, locationSettingsRequest.a());
        a.a(parcel, 2, locationSettingsRequest.c());
        a.a(parcel, 3, locationSettingsRequest.d());
        a.a(parcel, a);
    }

    public LocationSettingsRequest a(Parcel parcel) {
        boolean z = false;
        int b = zza.b(parcel);
        List list = null;
        boolean z2 = false;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    list = zza.c(parcel, a, LocationRequest.CREATOR);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    z2 = zza.c(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    z = zza.c(parcel, a);
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    i = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new LocationSettingsRequest(i, list, z2, z);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LocationSettingsRequest[] a(int i) {
        return new LocationSettingsRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
