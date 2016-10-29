package com.google.android.gms.playlog.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class b implements Creator<PlayLoggerContext> {
    static void a(PlayLoggerContext playLoggerContext, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, playLoggerContext.a);
        a.a(parcel, 2, playLoggerContext.b, false);
        a.a(parcel, 3, playLoggerContext.c);
        a.a(parcel, 4, playLoggerContext.d);
        a.a(parcel, 5, playLoggerContext.e, false);
        a.a(parcel, 6, playLoggerContext.f, false);
        a.a(parcel, 7, playLoggerContext.g);
        a.a(parcel, 8, playLoggerContext.h, false);
        a.a(parcel, 9, playLoggerContext.i);
        a.a(parcel, 10, playLoggerContext.j);
        a.a(parcel, a);
    }

    public PlayLoggerContext a(Parcel parcel) {
        String str = null;
        int i = 0;
        int b = zza.b(parcel);
        boolean z = true;
        boolean z2 = false;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        int i3 = 0;
        String str4 = null;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i4 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str4 = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    i3 = zza.f(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    i2 = zza.f(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    str3 = zza.o(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    str2 = zza.o(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    z = zza.c(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    str = zza.o(parcel, a);
                    break;
                case com.facebook.shimmer.b.ShimmerFrameLayout_fixed_height /*9*/:
                    z2 = zza.c(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    i = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new PlayLoggerContext(i4, str4, i3, i2, str3, str2, z, str, z2, i);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PlayLoggerContext[] a(int i) {
        return new PlayLoggerContext[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
