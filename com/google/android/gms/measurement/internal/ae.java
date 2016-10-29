package com.google.android.gms.measurement.internal;

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

public class ae implements Creator<UserAttributeParcel> {
    static void a(UserAttributeParcel userAttributeParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, userAttributeParcel.a);
        a.a(parcel, 2, userAttributeParcel.b, false);
        a.a(parcel, 3, userAttributeParcel.c);
        a.a(parcel, 4, userAttributeParcel.d, false);
        a.a(parcel, 5, userAttributeParcel.e, false);
        a.a(parcel, 6, userAttributeParcel.f, false);
        a.a(parcel, 7, userAttributeParcel.g, false);
        a.a(parcel, a);
    }

    public UserAttributeParcel a(Parcel parcel) {
        String str = null;
        int b = zza.b(parcel);
        int i = 0;
        long j = 0;
        String str2 = null;
        Float f = null;
        Long l = null;
        String str3 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str3 = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    j = zza.h(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    l = zza.i(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    f = zza.l(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    str2 = zza.o(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    str = zza.o(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new UserAttributeParcel(i, str3, j, l, f, str2, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public UserAttributeParcel[] a(int i) {
        return new UserAttributeParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
