package com.google.android.gms.location.places.internal;

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

public class f implements Creator<PlacesParams> {
    static void a(PlacesParams placesParams, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, placesParams.c, false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, placesParams.b);
        a.a(parcel, 2, placesParams.d, false);
        a.a(parcel, 3, placesParams.e, false);
        a.a(parcel, 4, placesParams.f, false);
        a.a(parcel, 6, placesParams.g);
        a.a(parcel, 7, placesParams.h);
        a.a(parcel, a);
    }

    public PlacesParams a(Parcel parcel) {
        int i = 0;
        String str = null;
        int b = zza.b(parcel);
        int i2 = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str4 = zza.o(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str3 = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str2 = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str = zza.o(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    i2 = zza.f(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    i = zza.f(parcel, a);
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    i3 = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new PlacesParams(i3, str4, str3, str2, str, i2, i);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PlacesParams[] a(int i) {
        return new PlacesParams[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
