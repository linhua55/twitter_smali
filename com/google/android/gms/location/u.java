package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public class u implements Creator<LocationResult> {
    static void a(LocationResult locationResult, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.c(parcel, 1, locationResult.b(), false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, locationResult.c());
        a.a(parcel, a);
    }

    public LocationResult a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        List list = LocationResult.a;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    list = zza.c(parcel, a, Location.CREATOR);
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
            return new LocationResult(i, list);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LocationResult[] a(int i) {
        return new LocationResult[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
