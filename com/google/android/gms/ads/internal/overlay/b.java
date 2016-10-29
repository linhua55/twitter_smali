package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
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

public class b implements Creator<AdLauncherIntentInfoParcel> {
    static void a(AdLauncherIntentInfoParcel adLauncherIntentInfoParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, adLauncherIntentInfoParcel.a);
        a.a(parcel, 2, adLauncherIntentInfoParcel.b, false);
        a.a(parcel, 3, adLauncherIntentInfoParcel.c, false);
        a.a(parcel, 4, adLauncherIntentInfoParcel.d, false);
        a.a(parcel, 5, adLauncherIntentInfoParcel.e, false);
        a.a(parcel, 6, adLauncherIntentInfoParcel.f, false);
        a.a(parcel, 7, adLauncherIntentInfoParcel.g, false);
        a.a(parcel, 8, adLauncherIntentInfoParcel.h, false);
        a.a(parcel, 9, adLauncherIntentInfoParcel.i, i, false);
        a.a(parcel, a);
    }

    public AdLauncherIntentInfoParcel a(Parcel parcel) {
        Intent intent = null;
        int b = zza.b(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str7 = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str6 = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str5 = zza.o(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    str4 = zza.o(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    str3 = zza.o(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    str2 = zza.o(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    str = zza.o(parcel, a);
                    break;
                case com.facebook.shimmer.b.ShimmerFrameLayout_fixed_height /*9*/:
                    intent = (Intent) zza.a(parcel, a, Intent.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new AdLauncherIntentInfoParcel(i, str7, str6, str5, str4, str3, str2, str, intent);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AdLauncherIntentInfoParcel[] a(int i) {
        return new AdLauncherIntentInfoParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
