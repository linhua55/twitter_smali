package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class r implements Creator<PointOfInterest> {
    static void a(PointOfInterest pointOfInterest, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, pointOfInterest.a());
        a.a(parcel, 2, pointOfInterest.a, i, false);
        a.a(parcel, 3, pointOfInterest.b, false);
        a.a(parcel, 4, pointOfInterest.c, false);
        a.a(parcel, a);
    }

    public PointOfInterest a(Parcel parcel) {
        String str = null;
        int b = zza.b(parcel);
        int i = 0;
        String str2 = null;
        LatLng latLng = null;
        while (parcel.dataPosition() < b) {
            LatLng latLng2;
            int f;
            String str3;
            int a = zza.a(parcel);
            String str4;
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str4 = str;
                    str = str2;
                    latLng2 = latLng;
                    f = zza.f(parcel, a);
                    str3 = str4;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    f = i;
                    str4 = str2;
                    latLng2 = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    str3 = str;
                    str = str4;
                    break;
                case Util.TYPE_OTHER /*3*/:
                    latLng2 = latLng;
                    f = i;
                    str4 = str;
                    str = zza.o(parcel, a);
                    str3 = str4;
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str3 = zza.o(parcel, a);
                    str = str2;
                    latLng2 = latLng;
                    f = i;
                    break;
                default:
                    zza.b(parcel, a);
                    str3 = str;
                    str = str2;
                    latLng2 = latLng;
                    f = i;
                    break;
            }
            i = f;
            latLng = latLng2;
            str2 = str;
            str = str3;
        }
        if (parcel.dataPosition() == b) {
            return new PointOfInterest(i, latLng, str2, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PointOfInterest[] a(int i) {
        return new PointOfInterest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
