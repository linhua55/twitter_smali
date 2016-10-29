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
import com.google.android.gms.maps.model.CameraPosition;
import defpackage.bdd;

public class ag implements Creator<GoogleMapOptions> {
    static void a(GoogleMapOptions googleMapOptions, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, googleMapOptions.a());
        a.a(parcel, 2, googleMapOptions.b());
        a.a(parcel, 3, googleMapOptions.c());
        a.a(parcel, 4, googleMapOptions.m());
        a.a(parcel, 5, googleMapOptions.n(), i, false);
        a.a(parcel, 6, googleMapOptions.d());
        a.a(parcel, 7, googleMapOptions.e());
        a.a(parcel, 8, googleMapOptions.f());
        a.a(parcel, 9, googleMapOptions.g());
        a.a(parcel, 10, googleMapOptions.h());
        a.a(parcel, 11, googleMapOptions.i());
        a.a(parcel, 12, googleMapOptions.j());
        a.a(parcel, 14, googleMapOptions.k());
        a.a(parcel, 15, googleMapOptions.l());
        a.a(parcel, a);
    }

    public GoogleMapOptions a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        byte b2 = (byte) -1;
        byte b3 = (byte) -1;
        int i2 = 0;
        CameraPosition cameraPosition = null;
        byte b4 = (byte) -1;
        byte b5 = (byte) -1;
        byte b6 = (byte) -1;
        byte b7 = (byte) -1;
        byte b8 = (byte) -1;
        byte b9 = (byte) -1;
        byte b10 = (byte) -1;
        byte b11 = (byte) -1;
        byte b12 = (byte) -1;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    b2 = zza.d(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    b3 = zza.d(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    i2 = zza.f(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    cameraPosition = (CameraPosition) zza.a(parcel, a, CameraPosition.CREATOR);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    b4 = zza.d(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    b5 = zza.d(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    b6 = zza.d(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    b7 = zza.d(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    b8 = zza.d(parcel, a);
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    b9 = zza.d(parcel, a);
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    b10 = zza.d(parcel, a);
                    break;
                case b.ShimmerFrameLayout_tilt /*14*/:
                    b11 = zza.d(parcel, a);
                    break;
                case bdd.TwitterButton_strokeWidth /*15*/:
                    b12 = zza.d(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new GoogleMapOptions(i, b2, b3, i2, cameraPosition, b4, b5, b6, b7, b8, b9, b10, b11, b12);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public GoogleMapOptions[] a(int i) {
        return new GoogleMapOptions[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
