package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class ah implements Creator<AppMetadata> {
    static void a(AppMetadata appMetadata, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, appMetadata.a);
        a.a(parcel, 2, appMetadata.b, false);
        a.a(parcel, 3, appMetadata.c, false);
        a.a(parcel, 4, appMetadata.d, false);
        a.a(parcel, 5, appMetadata.e, false);
        a.a(parcel, 6, appMetadata.f);
        a.a(parcel, 7, appMetadata.g);
        a.a(parcel, 8, appMetadata.h, false);
        a.a(parcel, 9, appMetadata.i);
        a.a(parcel, 10, appMetadata.j);
        a.a(parcel, a);
    }

    public AppMetadata a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        long j = 0;
        long j2 = 0;
        String str5 = null;
        boolean z = false;
        boolean z2 = false;
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
                    str2 = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str3 = zza.o(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    str4 = zza.o(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    j = zza.h(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    j2 = zza.h(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    str5 = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    z = zza.c(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    z2 = zza.c(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new AppMetadata(i, str, str2, str3, str4, j, j2, str5, z, z2);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AppMetadata[] a(int i) {
        return new AppMetadata[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
