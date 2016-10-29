package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.location.places.internal.AutocompletePredictionEntity.SubstringEntity;
import java.util.List;

public class a implements Creator<AutocompletePredictionEntity> {
    static void a(AutocompletePredictionEntity autocompletePredictionEntity, Parcel parcel, int i) {
        int a = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, autocompletePredictionEntity.b, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, autocompletePredictionEntity.a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, autocompletePredictionEntity.c, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, autocompletePredictionEntity.d, false);
        com.google.android.gms.common.internal.safeparcel.a.c(parcel, 4, autocompletePredictionEntity.e, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, autocompletePredictionEntity.f);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, autocompletePredictionEntity.g, false);
        com.google.android.gms.common.internal.safeparcel.a.c(parcel, 7, autocompletePredictionEntity.h, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 8, autocompletePredictionEntity.i, false);
        com.google.android.gms.common.internal.safeparcel.a.c(parcel, 9, autocompletePredictionEntity.j, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a);
    }

    public AutocompletePredictionEntity a(Parcel parcel) {
        int i = 0;
        List list = null;
        int b = zza.b(parcel);
        String str = null;
        List list2 = null;
        String str2 = null;
        List list3 = null;
        String str3 = null;
        List list4 = null;
        String str4 = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str3 = zza.o(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str4 = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    list4 = zza.A(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    list3 = zza.c(parcel, a, SubstringEntity.CREATOR);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    i = zza.f(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    str2 = zza.o(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    list2 = zza.c(parcel, a, SubstringEntity.CREATOR);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    str = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    list = zza.c(parcel, a, SubstringEntity.CREATOR);
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    i2 = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new AutocompletePredictionEntity(i2, str4, list4, i, str3, list3, str2, list2, str, list);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AutocompletePredictionEntity[] a(int i) {
        return new AutocompletePredictionEntity[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
