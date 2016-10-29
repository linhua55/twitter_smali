package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class p implements Creator<LatLng> {
    static void a(LatLng latLng, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, latLng.a());
        a.a(parcel, 2, latLng.a);
        a.a(parcel, 3, latLng.b);
        a.a(parcel, a);
    }

    public LatLng a(Parcel parcel) {
        double d = 0.0d;
        int b = zza.b(parcel);
        int i = 0;
        double d2 = 0.0d;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    d2 = zza.m(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    d = zza.m(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new LatLng(i, d2, d);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LatLng[] a(int i) {
        return new LatLng[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
