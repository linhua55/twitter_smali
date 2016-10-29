package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class aa implements Creator<InterstitialAdParameterParcel> {
    static void a(InterstitialAdParameterParcel interstitialAdParameterParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, interstitialAdParameterParcel.a);
        a.a(parcel, 2, interstitialAdParameterParcel.b);
        a.a(parcel, 3, interstitialAdParameterParcel.c);
        a.a(parcel, 4, interstitialAdParameterParcel.d, false);
        a.a(parcel, 5, interstitialAdParameterParcel.e);
        a.a(parcel, 6, interstitialAdParameterParcel.f);
        a.a(parcel, a);
    }

    public InterstitialAdParameterParcel a(Parcel parcel) {
        boolean z = false;
        int b = zza.b(parcel);
        String str = null;
        float f = 0.0f;
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    z3 = zza.c(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    z2 = zza.c(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str = zza.o(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    z = zza.c(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    f = zza.k(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new InterstitialAdParameterParcel(i, z3, z2, str, z, f);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public InterstitialAdParameterParcel[] a(int i) {
        return new InterstitialAdParameterParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
