package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public class h implements Creator<TokenData> {
    static void a(TokenData tokenData, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, tokenData.a);
        a.a(parcel, 2, tokenData.a(), false);
        a.a(parcel, 3, tokenData.b(), false);
        a.a(parcel, 4, tokenData.c());
        a.a(parcel, 5, tokenData.d());
        a.b(parcel, 6, tokenData.e(), false);
        a.a(parcel, a);
    }

    public TokenData a(Parcel parcel) {
        List list = null;
        boolean z = false;
        int b = zza.b(parcel);
        boolean z2 = false;
        Long l = null;
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    l = zza.i(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    z2 = zza.c(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    z = zza.c(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    list = zza.B(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new TokenData(i, str, l, z2, z, list);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public TokenData[] a(int i) {
        return new TokenData[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
