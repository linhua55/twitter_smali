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

public class n implements Creator<GroundOverlayOptions> {
    static void a(GroundOverlayOptions groundOverlayOptions, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, groundOverlayOptions.b());
        a.a(parcel, 2, groundOverlayOptions.a(), false);
        a.a(parcel, 3, groundOverlayOptions.c(), i, false);
        a.a(parcel, 4, groundOverlayOptions.d());
        a.a(parcel, 5, groundOverlayOptions.e());
        a.a(parcel, 6, groundOverlayOptions.f(), i, false);
        a.a(parcel, 7, groundOverlayOptions.g());
        a.a(parcel, 8, groundOverlayOptions.h());
        a.a(parcel, 9, groundOverlayOptions.l());
        a.a(parcel, 10, groundOverlayOptions.i());
        a.a(parcel, 11, groundOverlayOptions.j());
        a.a(parcel, 12, groundOverlayOptions.k());
        a.a(parcel, 13, groundOverlayOptions.m());
        a.a(parcel, a);
    }

    public GroundOverlayOptions a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        IBinder iBinder = null;
        LatLng latLng = null;
        float f = 0.0f;
        float f2 = 0.0f;
        LatLngBounds latLngBounds = null;
        float f3 = 0.0f;
        float f4 = 0.0f;
        boolean z = false;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        boolean z2 = false;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    iBinder = zza.p(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    latLng = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    f = zza.k(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    f2 = zza.k(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    latLngBounds = (LatLngBounds) zza.a(parcel, a, LatLngBounds.CREATOR);
                    break;
                case C.ENCODING_DTS /*7*/:
                    f3 = zza.k(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    f4 = zza.k(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    z = zza.c(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    f5 = zza.k(parcel, a);
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    f6 = zza.k(parcel, a);
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    f7 = zza.k(parcel, a);
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    z2 = zza.c(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new GroundOverlayOptions(i, iBinder, latLng, f, f2, latLngBounds, f3, f4, z, f5, f6, f7, z2);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public GroundOverlayOptions[] a(int i) {
        return new GroundOverlayOptions[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
