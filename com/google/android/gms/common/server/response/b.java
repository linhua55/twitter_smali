package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.server.response.FastJsonResponse.Field;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class b implements Creator<Field> {
    static void a(Field field, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, field.a());
        a.a(parcel, 2, field.b());
        a.a(parcel, 3, field.c());
        a.a(parcel, 4, field.d());
        a.a(parcel, 5, field.e());
        a.a(parcel, 6, field.f(), false);
        a.a(parcel, 7, field.g());
        a.a(parcel, 8, field.i(), false);
        a.a(parcel, 9, field.k(), i, false);
        a.a(parcel, a);
    }

    public Field a(Parcel parcel) {
        ConverterWrapper converterWrapper = null;
        int i = 0;
        int b = zza.b(parcel);
        String str = null;
        String str2 = null;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i4 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i3 = zza.f(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    z2 = zza.c(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    i2 = zza.f(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    z = zza.c(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    str2 = zza.o(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    i = zza.f(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    str = zza.o(parcel, a);
                    break;
                case com.facebook.shimmer.b.ShimmerFrameLayout_fixed_height /*9*/:
                    converterWrapper = (ConverterWrapper) zza.a(parcel, a, ConverterWrapper.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new Field(i4, i3, z2, i2, z, str2, i, str, converterWrapper);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public Field[] a(int i) {
        return new Field[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
