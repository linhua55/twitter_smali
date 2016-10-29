package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class o implements Creator<LatLngBounds> {
    static void a(LatLngBounds latLngBounds, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, latLngBounds.a());
        a.a(parcel, 2, latLngBounds.a, i, false);
        a.a(parcel, 3, latLngBounds.b, i, false);
        a.a(parcel, a);
    }

    public LatLngBounds a(Parcel parcel) {
        LatLng latLng = null;
        int b = zza.b(parcel);
        int i = 0;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < b) {
            int f;
            LatLng latLng3;
            int a = zza.a(parcel);
            LatLng latLng4;
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    latLng4 = latLng;
                    latLng = latLng2;
                    f = zza.f(parcel, a);
                    latLng3 = latLng4;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    f = i;
                    latLng4 = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    latLng3 = latLng;
                    latLng = latLng4;
                    break;
                case Util.TYPE_OTHER /*3*/:
                    latLng3 = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    latLng = latLng2;
                    f = i;
                    break;
                default:
                    zza.b(parcel, a);
                    latLng3 = latLng;
                    latLng = latLng2;
                    f = i;
                    break;
            }
            i = f;
            latLng2 = latLng;
            latLng = latLng3;
        }
        if (parcel.dataPosition() == b) {
            return new LatLngBounds(i, latLng2, latLng);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LatLngBounds[] a(int i) {
        return new LatLngBounds[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
