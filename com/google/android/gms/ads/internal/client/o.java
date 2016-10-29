package com.google.android.gms.ads.internal.client;

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
import defpackage.bdd;

public class o implements Creator<SearchAdRequestParcel> {
    static void a(SearchAdRequestParcel searchAdRequestParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, searchAdRequestParcel.a);
        a.a(parcel, 2, searchAdRequestParcel.b);
        a.a(parcel, 3, searchAdRequestParcel.c);
        a.a(parcel, 4, searchAdRequestParcel.d);
        a.a(parcel, 5, searchAdRequestParcel.e);
        a.a(parcel, 6, searchAdRequestParcel.f);
        a.a(parcel, 7, searchAdRequestParcel.g);
        a.a(parcel, 8, searchAdRequestParcel.h);
        a.a(parcel, 9, searchAdRequestParcel.i);
        a.a(parcel, 10, searchAdRequestParcel.j, false);
        a.a(parcel, 11, searchAdRequestParcel.k);
        a.a(parcel, 12, searchAdRequestParcel.l, false);
        a.a(parcel, 13, searchAdRequestParcel.m);
        a.a(parcel, 14, searchAdRequestParcel.n);
        a.a(parcel, 15, searchAdRequestParcel.o, false);
        a.a(parcel, a);
    }

    public SearchAdRequestParcel a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        String str = null;
        int i10 = 0;
        String str2 = null;
        int i11 = 0;
        int i12 = 0;
        String str3 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    i3 = zza.f(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    i4 = zza.f(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    i5 = zza.f(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    i6 = zza.f(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    i7 = zza.f(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    i8 = zza.f(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    i9 = zza.f(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    str = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    i10 = zza.f(parcel, a);
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    str2 = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    i11 = zza.f(parcel, a);
                    break;
                case b.ShimmerFrameLayout_tilt /*14*/:
                    i12 = zza.f(parcel, a);
                    break;
                case bdd.TwitterButton_strokeWidth /*15*/:
                    str3 = zza.o(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new SearchAdRequestParcel(i, i2, i3, i4, i5, i6, i7, i8, i9, str, i10, str2, i11, i12, str3);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public SearchAdRequestParcel[] a(int i) {
        return new SearchAdRequestParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
