package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class c implements Creator<PlaceLikelihoodEntity> {
    static void a(PlaceLikelihoodEntity placeLikelihoodEntity, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, placeLikelihoodEntity.b, i, false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, placeLikelihoodEntity.a);
        a.a(parcel, 2, placeLikelihoodEntity.c);
        a.a(parcel, a);
    }

    public PlaceLikelihoodEntity a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        PlaceImpl placeImpl = null;
        float f = 0.0f;
        while (parcel.dataPosition() < b) {
            int i2;
            float f2;
            PlaceImpl placeImpl2;
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = i;
                    PlaceImpl placeImpl3 = (PlaceImpl) zza.a(parcel, a, PlaceImpl.CREATOR);
                    f2 = f;
                    placeImpl2 = placeImpl3;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    f2 = zza.k(parcel, a);
                    placeImpl2 = placeImpl;
                    i2 = i;
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    float f3 = f;
                    placeImpl2 = placeImpl;
                    i2 = zza.f(parcel, a);
                    f2 = f3;
                    break;
                default:
                    zza.b(parcel, a);
                    f2 = f;
                    placeImpl2 = placeImpl;
                    i2 = i;
                    break;
            }
            i = i2;
            placeImpl = placeImpl2;
            f = f2;
        }
        if (parcel.dataPosition() == b) {
            return new PlaceLikelihoodEntity(i, placeImpl, f);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PlaceLikelihoodEntity[] a(int i) {
        return new PlaceLikelihoodEntity[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
