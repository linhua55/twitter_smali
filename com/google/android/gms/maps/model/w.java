package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class w implements Creator<StreetViewPanoramaLocation> {
    static void a(StreetViewPanoramaLocation streetViewPanoramaLocation, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, streetViewPanoramaLocation.a());
        a.a(parcel, 2, streetViewPanoramaLocation.a, i, false);
        a.a(parcel, 3, streetViewPanoramaLocation.b, i, false);
        a.a(parcel, 4, streetViewPanoramaLocation.c, false);
        a.a(parcel, a);
    }

    public StreetViewPanoramaLocation a(Parcel parcel) {
        String str = null;
        int b = zza.b(parcel);
        int i = 0;
        LatLng latLng = null;
        StreetViewPanoramaLink[] streetViewPanoramaLinkArr = null;
        while (parcel.dataPosition() < b) {
            LatLng latLng2;
            StreetViewPanoramaLink[] streetViewPanoramaLinkArr2;
            int f;
            String str2;
            int a = zza.a(parcel);
            String str3;
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str3 = str;
                    latLng2 = latLng;
                    streetViewPanoramaLinkArr2 = streetViewPanoramaLinkArr;
                    f = zza.f(parcel, a);
                    str2 = str3;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    f = i;
                    LatLng latLng3 = latLng;
                    streetViewPanoramaLinkArr2 = (StreetViewPanoramaLink[]) zza.b(parcel, a, StreetViewPanoramaLink.CREATOR);
                    str2 = str;
                    latLng2 = latLng3;
                    break;
                case Util.TYPE_OTHER /*3*/:
                    streetViewPanoramaLinkArr2 = streetViewPanoramaLinkArr;
                    f = i;
                    str3 = str;
                    latLng2 = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    str2 = str3;
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str2 = zza.o(parcel, a);
                    latLng2 = latLng;
                    streetViewPanoramaLinkArr2 = streetViewPanoramaLinkArr;
                    f = i;
                    break;
                default:
                    zza.b(parcel, a);
                    str2 = str;
                    latLng2 = latLng;
                    streetViewPanoramaLinkArr2 = streetViewPanoramaLinkArr;
                    f = i;
                    break;
            }
            i = f;
            streetViewPanoramaLinkArr = streetViewPanoramaLinkArr2;
            latLng = latLng2;
            str = str2;
        }
        if (parcel.dataPosition() == b) {
            return new StreetViewPanoramaLocation(i, streetViewPanoramaLinkArr, latLng, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public StreetViewPanoramaLocation[] a(int i) {
        return new StreetViewPanoramaLocation[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
