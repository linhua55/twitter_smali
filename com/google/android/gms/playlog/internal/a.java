package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class a implements Creator<LogEvent> {
    static void a(LogEvent logEvent, Parcel parcel, int i) {
        int a = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, logEvent.a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, logEvent.b);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, logEvent.d, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, logEvent.e, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, logEvent.f, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, logEvent.c);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a);
    }

    public LogEvent a(Parcel parcel) {
        long j = 0;
        Bundle bundle = null;
        int b = zza.b(parcel);
        int i = 0;
        byte[] bArr = null;
        String str = null;
        long j2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    j2 = zza.h(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    bArr = zza.r(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    bundle = zza.q(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    j = zza.h(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new LogEvent(i, j2, j, str, bArr, bundle);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LogEvent[] a(int i) {
        return new LogEvent[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
