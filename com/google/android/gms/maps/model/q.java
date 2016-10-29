package com.google.android.gms.maps.model;

import android.os.IBinder;
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

public class q implements Creator<MarkerOptions> {
    static void a(MarkerOptions markerOptions, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, markerOptions.a());
        a.a(parcel, 2, markerOptions.c(), i, false);
        a.a(parcel, 3, markerOptions.d(), false);
        a.a(parcel, 4, markerOptions.e(), false);
        a.a(parcel, 5, markerOptions.b(), false);
        a.a(parcel, 6, markerOptions.g());
        a.a(parcel, 7, markerOptions.h());
        a.a(parcel, 8, markerOptions.i());
        a.a(parcel, 9, markerOptions.j());
        a.a(parcel, 10, markerOptions.k());
        a.a(parcel, 11, markerOptions.l());
        a.a(parcel, 12, markerOptions.m());
        a.a(parcel, 13, markerOptions.n());
        a.a(parcel, 14, markerOptions.o());
        a.a(parcel, a);
    }

    public MarkerOptions a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        LatLng latLng = null;
        String str = null;
        String str2 = null;
        IBinder iBinder = null;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f3 = 0.0f;
        float f4 = 0.5f;
        float f5 = 0.0f;
        float f6 = 1.0f;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    latLng = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str2 = zza.o(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    iBinder = zza.p(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    f = zza.k(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    f2 = zza.k(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    z = zza.c(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    z2 = zza.c(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    z3 = zza.c(parcel, a);
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    f3 = zza.k(parcel, a);
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    f4 = zza.k(parcel, a);
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    f5 = zza.k(parcel, a);
                    break;
                case b.ShimmerFrameLayout_tilt /*14*/:
                    f6 = zza.k(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new MarkerOptions(i, latLng, str, str2, iBinder, f, f2, z, z2, z3, f3, f4, f5, f6);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public MarkerOptions[] a(int i) {
        return new MarkerOptions[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
