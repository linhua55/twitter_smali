package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class v implements Creator<StreetViewPanoramaLink> {
    static void a(StreetViewPanoramaLink streetViewPanoramaLink, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, streetViewPanoramaLink.a());
        a.a(parcel, 2, streetViewPanoramaLink.a, false);
        a.a(parcel, 3, streetViewPanoramaLink.b);
        a.a(parcel, a);
    }

    public StreetViewPanoramaLink a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        String str = null;
        float f = 0.0f;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    f = zza.k(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new StreetViewPanoramaLink(i, str, f);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public StreetViewPanoramaLink[] a(int i) {
        return new StreetViewPanoramaLink[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
