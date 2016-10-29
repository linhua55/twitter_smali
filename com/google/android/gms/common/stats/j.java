package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bdd;
import java.util.List;

public class j implements Creator<WakeLockEvent> {
    static void a(WakeLockEvent wakeLockEvent, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, wakeLockEvent.a);
        a.a(parcel, 2, wakeLockEvent.a());
        a.a(parcel, 4, wakeLockEvent.c(), false);
        a.a(parcel, 5, wakeLockEvent.e());
        a.b(parcel, 6, wakeLockEvent.f(), false);
        a.a(parcel, 8, wakeLockEvent.h());
        a.a(parcel, 10, wakeLockEvent.d(), false);
        a.a(parcel, 11, wakeLockEvent.b());
        a.a(parcel, 12, wakeLockEvent.g(), false);
        a.a(parcel, 13, wakeLockEvent.k(), false);
        a.a(parcel, 14, wakeLockEvent.j());
        a.a(parcel, 15, wakeLockEvent.m());
        a.a(parcel, 16, wakeLockEvent.n());
        a.a(parcel, a);
    }

    public WakeLockEvent a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        long j = 0;
        int i2 = 0;
        String str = null;
        int i3 = 0;
        List list = null;
        String str2 = null;
        long j2 = 0;
        int i4 = 0;
        String str3 = null;
        String str4 = null;
        float f = 0.0f;
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
                    i3 = zza.f(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    list = zza.B(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    j2 = zza.h(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    str3 = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    str2 = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    str4 = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_tilt /*14*/:
                    i4 = zza.f(parcel, a);
                    break;
                case bdd.TwitterButton_strokeWidth /*15*/:
                    f = zza.k(parcel, a);
                    break;
                case Atom.LONG_HEADER_SIZE /*16*/:
                    j3 = zza.h(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new WakeLockEvent(i, j, i2, str, i3, list, str2, j2, i4, str3, str4, f, j3);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public WakeLockEvent[] a(int i) {
        return new WakeLockEvent[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
