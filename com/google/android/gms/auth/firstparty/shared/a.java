package com.google.android.gms.auth.firstparty.shared;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class a implements Creator<FACLConfig> {
    static void a(FACLConfig fACLConfig, Parcel parcel, int i) {
        int a = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, fACLConfig.a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, fACLConfig.b);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, fACLConfig.c, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, fACLConfig.d);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, fACLConfig.e);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, fACLConfig.f);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 7, fACLConfig.g);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a);
    }

    public FACLConfig a(Parcel parcel) {
        boolean z = false;
        int b = zza.b(parcel);
        String str = null;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    z5 = zza.c(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    z4 = zza.c(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    z3 = zza.c(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    z2 = zza.c(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    z = zza.c(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new FACLConfig(i, z5, str, z4, z3, z2, z);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public FACLConfig[] a(int i) {
        return new FACLConfig[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
