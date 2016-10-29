package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class a implements Creator<ConnectionEvent> {
    static void a(ConnectionEvent connectionEvent, Parcel parcel, int i) {
        int a = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, connectionEvent.a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, connectionEvent.a());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, connectionEvent.c(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, connectionEvent.d(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, connectionEvent.e(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 7, connectionEvent.f(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 8, connectionEvent.g(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 10, connectionEvent.k());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 11, connectionEvent.j());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 12, connectionEvent.b());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 13, connectionEvent.h(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a);
    }

    public ConnectionEvent a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        long j = 0;
        int i2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        long j2 = 0;
        long j3 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    j = zza.h(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str = zza.o(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    str2 = zza.o(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    str3 = zza.o(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    str4 = zza.o(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    str5 = zza.o(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    j2 = zza.h(parcel, a);
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    j3 = zza.h(parcel, a);
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    i2 = zza.f(parcel, a);
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    str6 = zza.o(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new ConnectionEvent(i, j, i2, str, str2, str3, str4, str5, str6, j2, j3);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public ConnectionEvent[] a(int i) {
        return new ConnectionEvent[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
