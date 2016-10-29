package com.google.android.gms.maps;

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
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public class ah implements Creator<StreetViewPanoramaOptions> {
    static void a(StreetViewPanoramaOptions streetViewPanoramaOptions, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, streetViewPanoramaOptions.a());
        a.a(parcel, 2, streetViewPanoramaOptions.g(), i, false);
        a.a(parcel, 3, streetViewPanoramaOptions.j(), false);
        a.a(parcel, 4, streetViewPanoramaOptions.h(), i, false);
        a.a(parcel, 5, streetViewPanoramaOptions.i(), false);
        a.a(parcel, 6, streetViewPanoramaOptions.b());
        a.a(parcel, 7, streetViewPanoramaOptions.c());
        a.a(parcel, 8, streetViewPanoramaOptions.d());
        a.a(parcel, 9, streetViewPanoramaOptions.e());
        a.a(parcel, 10, streetViewPanoramaOptions.f());
        a.a(parcel, a);
    }

    public StreetViewPanoramaOptions a(Parcel parcel) {
        Integer num = null;
        byte b = (byte) 0;
        int b2 = zza.b(parcel);
        byte b3 = (byte) 0;
        byte b4 = (byte) 0;
        byte b5 = (byte) 0;
        byte b6 = (byte) 0;
        LatLng latLng = null;
        String str = null;
        StreetViewPanoramaCamera streetViewPanoramaCamera = null;
        int i = 0;
        while (parcel.dataPosition() < b2) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    streetViewPanoramaCamera = (StreetViewPanoramaCamera) zza.a(parcel, a, StreetViewPanoramaCamera.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    latLng = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    num = zza.g(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    b6 = zza.d(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    b5 = zza.d(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    b4 = zza.d(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    b3 = zza.d(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    b = zza.d(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b2) {
            return new StreetViewPanoramaOptions(i, streetViewPanoramaCamera, str, latLng, num, b6, b5, b4, b3, b);
        }
        throw new zza.zza("Overread allowed size end=" + b2, parcel);
    }

    public StreetViewPanoramaOptions[] a(int i) {
        return new StreetViewPanoramaOptions[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
