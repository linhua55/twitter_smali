package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class u implements Creator<StreetViewPanoramaCamera> {
    static void a(StreetViewPanoramaCamera streetViewPanoramaCamera, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, streetViewPanoramaCamera.a());
        a.a(parcel, 2, streetViewPanoramaCamera.a);
        a.a(parcel, 3, streetViewPanoramaCamera.b);
        a.a(parcel, 4, streetViewPanoramaCamera.c);
        a.a(parcel, a);
    }

    public StreetViewPanoramaCamera a(Parcel parcel) {
        float f = 0.0f;
        int b = zza.b(parcel);
        float f2 = 0.0f;
        int i = 0;
        float f3 = 0.0f;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    f2 = zza.k(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    f3 = zza.k(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    f = zza.k(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new StreetViewPanoramaCamera(i, f2, f3, f);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public StreetViewPanoramaCamera[] a(int i) {
        return new StreetViewPanoramaCamera[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
