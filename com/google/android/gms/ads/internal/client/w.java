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

public class w implements Creator<AdSizeParcel> {
    static void a(AdSizeParcel adSizeParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, adSizeParcel.a);
        a.a(parcel, 2, adSizeParcel.b, false);
        a.a(parcel, 3, adSizeParcel.c);
        a.a(parcel, 4, adSizeParcel.d);
        a.a(parcel, 5, adSizeParcel.e);
        a.a(parcel, 6, adSizeParcel.f);
        a.a(parcel, 7, adSizeParcel.g);
        a.a(parcel, 8, adSizeParcel.h, i, false);
        a.a(parcel, 9, adSizeParcel.i);
        a.a(parcel, 10, adSizeParcel.j);
        a.a(parcel, 11, adSizeParcel.k);
        a.a(parcel, a);
    }

    public AdSizeParcel a(Parcel parcel) {
        AdSizeParcel[] adSizeParcelArr = null;
        boolean z = false;
        int b = zza.b(parcel);
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        int i2 = 0;
        boolean z4 = false;
        int i3 = 0;
        int i4 = 0;
        String str = null;
        int i5 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i5 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    i4 = zza.f(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    i3 = zza.f(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    z4 = zza.c(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    i2 = zza.f(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    i = zza.f(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    adSizeParcelArr = (AdSizeParcel[]) zza.b(parcel, a, AdSizeParcel.CREATOR);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    z3 = zza.c(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    z2 = zza.c(parcel, a);
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    z = zza.c(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new AdSizeParcel(i5, str, i4, i3, z4, i2, i, adSizeParcelArr, z3, z2, z);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AdSizeParcel[] a(int i) {
        return new AdSizeParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
