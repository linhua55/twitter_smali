package com.google.android.gms.ads.internal.overlay;

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
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bdd;

public class p implements Creator<AdOverlayInfoParcel> {
    static void a(AdOverlayInfoParcel adOverlayInfoParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, adOverlayInfoParcel.a);
        a.a(parcel, 2, adOverlayInfoParcel.b, i, false);
        a.a(parcel, 3, adOverlayInfoParcel.a(), false);
        a.a(parcel, 4, adOverlayInfoParcel.b(), false);
        a.a(parcel, 5, adOverlayInfoParcel.c(), false);
        a.a(parcel, 6, adOverlayInfoParcel.d(), false);
        a.a(parcel, 7, adOverlayInfoParcel.g, false);
        a.a(parcel, 8, adOverlayInfoParcel.h);
        a.a(parcel, 9, adOverlayInfoParcel.i, false);
        a.a(parcel, 10, adOverlayInfoParcel.f(), false);
        a.a(parcel, 11, adOverlayInfoParcel.k);
        a.a(parcel, 12, adOverlayInfoParcel.l);
        a.a(parcel, 13, adOverlayInfoParcel.m, false);
        a.a(parcel, 14, adOverlayInfoParcel.n, i, false);
        a.a(parcel, 15, adOverlayInfoParcel.e(), false);
        a.a(parcel, 17, adOverlayInfoParcel.q, i, false);
        a.a(parcel, 16, adOverlayInfoParcel.p, false);
        a.a(parcel, a);
    }

    public AdOverlayInfoParcel a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        AdLauncherIntentInfoParcel adLauncherIntentInfoParcel = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        boolean z = false;
        String str2 = null;
        IBinder iBinder5 = null;
        int i2 = 0;
        int i3 = 0;
        String str3 = null;
        VersionInfoParcel versionInfoParcel = null;
        IBinder iBinder6 = null;
        String str4 = null;
        InterstitialAdParameterParcel interstitialAdParameterParcel = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    adLauncherIntentInfoParcel = (AdLauncherIntentInfoParcel) zza.a(parcel, a, AdLauncherIntentInfoParcel.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    iBinder = zza.p(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    iBinder2 = zza.p(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    iBinder3 = zza.p(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    iBinder4 = zza.p(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    str = zza.o(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    z = zza.c(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    str2 = zza.o(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    iBinder5 = zza.p(parcel, a);
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    i3 = zza.f(parcel, a);
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    str3 = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_tilt /*14*/:
                    versionInfoParcel = (VersionInfoParcel) zza.a(parcel, a, VersionInfoParcel.CREATOR);
                    break;
                case bdd.TwitterButton_strokeWidth /*15*/:
                    iBinder6 = zza.p(parcel, a);
                    break;
                case Atom.LONG_HEADER_SIZE /*16*/:
                    str4 = zza.o(parcel, a);
                    break;
                case bdd.TwitterButton_bounded /*17*/:
                    interstitialAdParameterParcel = (InterstitialAdParameterParcel) zza.a(parcel, a, InterstitialAdParameterParcel.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new AdOverlayInfoParcel(i, adLauncherIntentInfoParcel, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i2, i3, str3, versionInfoParcel, iBinder6, str4, interstitialAdParameterParcel);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AdOverlayInfoParcel[] a(int i) {
        return new AdOverlayInfoParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
