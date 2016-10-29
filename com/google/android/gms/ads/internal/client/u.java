package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
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
import java.util.List;

public class u implements Creator<AdRequestParcel> {
    static void a(AdRequestParcel adRequestParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, adRequestParcel.a);
        a.a(parcel, 2, adRequestParcel.b);
        a.a(parcel, 3, adRequestParcel.c, false);
        a.a(parcel, 4, adRequestParcel.d);
        a.b(parcel, 5, adRequestParcel.e, false);
        a.a(parcel, 6, adRequestParcel.f);
        a.a(parcel, 7, adRequestParcel.g);
        a.a(parcel, 8, adRequestParcel.h);
        a.a(parcel, 9, adRequestParcel.i, false);
        a.a(parcel, 10, adRequestParcel.j, i, false);
        a.a(parcel, 11, adRequestParcel.k, i, false);
        a.a(parcel, 12, adRequestParcel.l, false);
        a.a(parcel, 13, adRequestParcel.m, false);
        a.a(parcel, 14, adRequestParcel.n, false);
        a.b(parcel, 15, adRequestParcel.o, false);
        a.a(parcel, 17, adRequestParcel.q, false);
        a.a(parcel, 16, adRequestParcel.p, false);
        a.a(parcel, 18, adRequestParcel.r);
        a.a(parcel, a);
    }

    public AdRequestParcel a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        long j = 0;
        Bundle bundle = null;
        int i2 = 0;
        List list = null;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        String str = null;
        SearchAdRequestParcel searchAdRequestParcel = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        List list2 = null;
        String str3 = null;
        String str4 = null;
        boolean z3 = false;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    j = zza.h(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    bundle = zza.q(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    i2 = zza.f(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    list = zza.B(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    z = zza.c(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    i3 = zza.f(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    z2 = zza.c(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    str = zza.o(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    searchAdRequestParcel = (SearchAdRequestParcel) zza.a(parcel, a, SearchAdRequestParcel.CREATOR);
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    location = (Location) zza.a(parcel, a, Location.CREATOR);
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    str2 = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    bundle2 = zza.q(parcel, a);
                    break;
                case b.ShimmerFrameLayout_tilt /*14*/:
                    bundle3 = zza.q(parcel, a);
                    break;
                case bdd.TwitterButton_strokeWidth /*15*/:
                    list2 = zza.B(parcel, a);
                    break;
                case Atom.LONG_HEADER_SIZE /*16*/:
                    str3 = zza.o(parcel, a);
                    break;
                case bdd.TwitterButton_bounded /*17*/:
                    str4 = zza.o(parcel, a);
                    break;
                case bdd.TwitterButton_knockout /*18*/:
                    z3 = zza.c(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new AdRequestParcel(i, j, bundle, i2, list, z, i3, z2, str, searchAdRequestParcel, location, str2, bundle2, bundle3, list2, str3, str4, z3);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AdRequestParcel[] a(int i) {
        return new AdRequestParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
