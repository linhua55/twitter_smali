package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public class t implements Creator<PolylineOptions> {
    static void a(PolylineOptions polylineOptions, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, polylineOptions.a());
        a.c(parcel, 2, polylineOptions.b(), false);
        a.a(parcel, 3, polylineOptions.c());
        a.a(parcel, 4, polylineOptions.d());
        a.a(parcel, 5, polylineOptions.e());
        a.a(parcel, 6, polylineOptions.f());
        a.a(parcel, 7, polylineOptions.g());
        a.a(parcel, 8, polylineOptions.h());
        a.a(parcel, a);
    }

    public PolylineOptions a(Parcel parcel) {
        float f = 0.0f;
        boolean z = false;
        int b = zza.b(parcel);
        List list = null;
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        float f2 = 0.0f;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    list = zza.c(parcel, a, LatLng.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    f2 = zza.k(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    i = zza.f(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    f = zza.k(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    z3 = zza.c(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    z2 = zza.c(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    z = zza.c(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new PolylineOptions(i2, list, f2, i, f, z3, z2, z);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PolylineOptions[] a(int i) {
        return new PolylineOptions[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
