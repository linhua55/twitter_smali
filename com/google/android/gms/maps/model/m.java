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

public class m implements Creator<CircleOptions> {
    static void a(CircleOptions circleOptions, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, circleOptions.a());
        a.a(parcel, 2, circleOptions.b(), i, false);
        a.a(parcel, 3, circleOptions.c());
        a.a(parcel, 4, circleOptions.d());
        a.a(parcel, 5, circleOptions.e());
        a.a(parcel, 6, circleOptions.f());
        a.a(parcel, 7, circleOptions.g());
        a.a(parcel, 8, circleOptions.h());
        a.a(parcel, a);
    }

    public CircleOptions a(Parcel parcel) {
        float f = 0.0f;
        boolean z = false;
        int b = zza.b(parcel);
        LatLng latLng = null;
        double d = 0.0d;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i3 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    latLng = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    d = zza.m(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    f2 = zza.k(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    i2 = zza.f(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    i = zza.f(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    f = zza.k(parcel, a);
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
            return new CircleOptions(i3, latLng, d, f2, i2, i, f, z);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public CircleOptions[] a(int i) {
        return new CircleOptions[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
