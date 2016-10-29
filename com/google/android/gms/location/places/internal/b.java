package com.google.android.gms.location.places.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
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
import com.google.android.gms.maps.model.LatLngBounds;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import defpackage.bdd;
import java.util.List;

public class b implements Creator<PlaceImpl> {
    static void a(PlaceImpl placeImpl, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, placeImpl.b(), false);
        a.a(parcel, 2, placeImpl.r(), false);
        a.a(parcel, 3, placeImpl.t(), i, false);
        a.a(parcel, 4, placeImpl.g(), i, false);
        a.a(parcel, 5, placeImpl.h());
        a.a(parcel, 6, placeImpl.i(), i, false);
        a.a(parcel, 7, placeImpl.s(), false);
        a.a(parcel, 8, placeImpl.j(), i, false);
        a.a(parcel, 9, placeImpl.n());
        a.a(parcel, 10, placeImpl.o());
        a.a(parcel, 11, placeImpl.p());
        a.a(parcel, 12, placeImpl.q());
        a.a(parcel, 13, placeImpl.d(), false);
        a.a(parcel, 14, placeImpl.f(), false);
        a.a(parcel, 15, placeImpl.k(), false);
        a.b(parcel, 17, placeImpl.m(), false);
        a.a(parcel, 16, placeImpl.l(), false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, placeImpl.a);
        a.a(parcel, 19, placeImpl.e(), false);
        a.a(parcel, 20, placeImpl.c(), false);
        a.a(parcel, a);
    }

    public PlaceImpl a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        String str = null;
        List list = null;
        List list2 = null;
        Bundle bundle = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        List list3 = null;
        LatLng latLng = null;
        float f = 0.0f;
        LatLngBounds latLngBounds = null;
        String str6 = null;
        Uri uri = null;
        boolean z = false;
        float f2 = 0.0f;
        int i2 = 0;
        long j = 0;
        PlaceLocalization placeLocalization = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str = zza.o(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    bundle = zza.q(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    placeLocalization = (PlaceLocalization) zza.a(parcel, a, PlaceLocalization.CREATOR);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    latLng = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    f = zza.k(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    latLngBounds = (LatLngBounds) zza.a(parcel, a, LatLngBounds.CREATOR);
                    break;
                case C.ENCODING_DTS /*7*/:
                    str6 = zza.o(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    uri = (Uri) zza.a(parcel, a, Uri.CREATOR);
                    break;
                case com.facebook.shimmer.b.ShimmerFrameLayout_fixed_height /*9*/:
                    z = zza.c(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    f2 = zza.k(parcel, a);
                    break;
                case com.facebook.shimmer.b.ShimmerFrameLayout_relative_width /*11*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    j = zza.h(parcel, a);
                    break;
                case com.facebook.shimmer.b.ShimmerFrameLayout_shape /*13*/:
                    list2 = zza.A(parcel, a);
                    break;
                case com.facebook.shimmer.b.ShimmerFrameLayout_tilt /*14*/:
                    str3 = zza.o(parcel, a);
                    break;
                case bdd.TwitterButton_strokeWidth /*15*/:
                    str4 = zza.o(parcel, a);
                    break;
                case Atom.LONG_HEADER_SIZE /*16*/:
                    str5 = zza.o(parcel, a);
                    break;
                case bdd.TwitterButton_bounded /*17*/:
                    list3 = zza.B(parcel, a);
                    break;
                case bdd.TwitterButton_iconLayout /*19*/:
                    str2 = zza.o(parcel, a);
                    break;
                case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                    list = zza.A(parcel, a);
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    i = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new PlaceImpl(i, str, list, list2, bundle, str2, str3, str4, str5, list3, latLng, f, latLngBounds, str6, uri, z, f2, i2, j, placeLocalization);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PlaceImpl[] a(int i) {
        return new PlaceImpl[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
