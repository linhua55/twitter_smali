package com.google.android.gms.maps.model;

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
import java.util.ArrayList;
import java.util.List;

public class s implements Creator<PolygonOptions> {
    static void a(PolygonOptions polygonOptions, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, polygonOptions.a());
        a.c(parcel, 2, polygonOptions.c(), false);
        a.d(parcel, 3, polygonOptions.b(), false);
        a.a(parcel, 4, polygonOptions.d());
        a.a(parcel, 5, polygonOptions.e());
        a.a(parcel, 6, polygonOptions.f());
        a.a(parcel, 7, polygonOptions.g());
        a.a(parcel, 8, polygonOptions.h());
        a.a(parcel, 9, polygonOptions.i());
        a.a(parcel, 10, polygonOptions.j());
        a.a(parcel, a);
    }

    public PolygonOptions a(Parcel parcel) {
        float f = 0.0f;
        boolean z = false;
        int b = zza.b(parcel);
        List list = null;
        List arrayList = new ArrayList();
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i3 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    list = zza.c(parcel, a, LatLng.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    zza.a(parcel, a, arrayList, getClass().getClassLoader());
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    f2 = zza.k(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    i2 = zza.f(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    i = zza.f(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    f = zza.k(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    z3 = zza.c(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    z2 = zza.c(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    z = zza.c(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new PolygonOptions(i3, list, arrayList, f2, i2, i, f, z3, z2, z);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PolygonOptions[] a(int i) {
        return new PolygonOptions[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
