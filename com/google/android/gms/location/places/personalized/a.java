package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class a implements Creator<PlaceAlias> {
    static void a(PlaceAlias placeAlias, Parcel parcel, int i) {
        int a = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, placeAlias.a(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, placeAlias.c);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a);
    }

    public PlaceAlias a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str = zza.o(parcel, a);
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
            return new PlaceAlias(i, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PlaceAlias[] a(int i) {
        return new PlaceAlias[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
