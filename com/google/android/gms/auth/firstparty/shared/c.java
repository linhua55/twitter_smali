package com.google.android.gms.auth.firstparty.shared;

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
import java.util.ArrayList;
import java.util.List;

public class c implements Creator<ScopeDetail> {
    static void a(ScopeDetail scopeDetail, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, scopeDetail.a);
        a.a(parcel, 2, scopeDetail.b, false);
        a.a(parcel, 3, scopeDetail.c, false);
        a.a(parcel, 4, scopeDetail.d, false);
        a.a(parcel, 5, scopeDetail.e, false);
        a.a(parcel, 6, scopeDetail.f, false);
        a.b(parcel, 7, scopeDetail.g, false);
        a.a(parcel, 8, scopeDetail.h, i, false);
        a.a(parcel, a);
    }

    public ScopeDetail a(Parcel parcel) {
        FACLData fACLData = null;
        int b = zza.b(parcel);
        int i = 0;
        List arrayList = new ArrayList();
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str5 = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str4 = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str3 = zza.o(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    str2 = zza.o(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    str = zza.o(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    arrayList = zza.B(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    fACLData = (FACLData) zza.a(parcel, a, FACLData.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new ScopeDetail(i, str5, str4, str3, str2, str, arrayList, fACLData);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public ScopeDetail[] a(int i) {
        return new ScopeDetail[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
