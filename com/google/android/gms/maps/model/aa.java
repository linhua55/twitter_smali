package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class aa implements Creator<VisibleRegion> {
    static void a(VisibleRegion visibleRegion, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, visibleRegion.a());
        a.a(parcel, 2, visibleRegion.a, i, false);
        a.a(parcel, 3, visibleRegion.b, i, false);
        a.a(parcel, 4, visibleRegion.c, i, false);
        a.a(parcel, 5, visibleRegion.d, i, false);
        a.a(parcel, 6, visibleRegion.e, i, false);
        a.a(parcel, a);
    }

    public VisibleRegion a(Parcel parcel) {
        LatLngBounds latLngBounds = null;
        int b = zza.b(parcel);
        int i = 0;
        LatLng latLng = null;
        LatLng latLng2 = null;
        LatLng latLng3 = null;
        LatLng latLng4 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    latLng4 = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    latLng3 = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    latLng2 = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    latLng = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    latLngBounds = (LatLngBounds) zza.a(parcel, a, LatLngBounds.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new VisibleRegion(i, latLng4, latLng3, latLng2, latLng, latLngBounds);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public VisibleRegion[] a(int i) {
        return new VisibleRegion[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
