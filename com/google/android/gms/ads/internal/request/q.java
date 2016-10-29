package com.google.android.gms.ads.internal.request;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import defpackage.bdd;
import java.util.List;

public class q implements Creator<AdRequestInfoParcel> {
    static void a(AdRequestInfoParcel adRequestInfoParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, adRequestInfoParcel.a);
        a.a(parcel, 2, adRequestInfoParcel.b, false);
        a.a(parcel, 3, adRequestInfoParcel.c, i, false);
        a.a(parcel, 4, adRequestInfoParcel.d, i, false);
        a.a(parcel, 5, adRequestInfoParcel.e, false);
        a.a(parcel, 6, adRequestInfoParcel.f, i, false);
        a.a(parcel, 7, adRequestInfoParcel.g, i, false);
        a.a(parcel, 8, adRequestInfoParcel.h, false);
        a.a(parcel, 9, adRequestInfoParcel.i, false);
        a.a(parcel, 10, adRequestInfoParcel.j, false);
        a.a(parcel, 11, adRequestInfoParcel.k, i, false);
        a.a(parcel, 12, adRequestInfoParcel.l, false);
        a.a(parcel, 13, adRequestInfoParcel.m);
        a.b(parcel, 14, adRequestInfoParcel.n, false);
        a.a(parcel, 15, adRequestInfoParcel.o, false);
        a.a(parcel, 17, adRequestInfoParcel.q, i, false);
        a.a(parcel, 16, adRequestInfoParcel.p);
        a.a(parcel, 19, adRequestInfoParcel.s);
        a.a(parcel, 18, adRequestInfoParcel.r);
        a.a(parcel, 21, adRequestInfoParcel.u, false);
        a.a(parcel, 20, adRequestInfoParcel.t);
        a.a(parcel, 25, adRequestInfoParcel.v);
        a.b(parcel, 27, adRequestInfoParcel.x, false);
        a.a(parcel, 26, adRequestInfoParcel.w, false);
        a.a(parcel, 29, adRequestInfoParcel.z, i, false);
        a.a(parcel, 28, adRequestInfoParcel.y, false);
        a.a(parcel, 31, adRequestInfoParcel.B);
        a.b(parcel, 30, adRequestInfoParcel.A, false);
        a.a(parcel, 34, adRequestInfoParcel.E);
        a.a(parcel, 35, adRequestInfoParcel.F);
        a.a(parcel, 32, adRequestInfoParcel.C, i, false);
        a.a(parcel, 33, adRequestInfoParcel.D, false);
        a.a(parcel, 36, adRequestInfoParcel.G);
        a.a(parcel, a);
    }

    public AdRequestInfoParcel a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        Bundle bundle = null;
        AdRequestParcel adRequestParcel = null;
        AdSizeParcel adSizeParcel = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        VersionInfoParcel versionInfoParcel = null;
        Bundle bundle2 = null;
        int i2 = 0;
        List list = null;
        Bundle bundle3 = null;
        boolean z = false;
        Messenger messenger = null;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        String str5 = null;
        long j = 0;
        String str6 = null;
        List list2 = null;
        String str7 = null;
        NativeAdOptionsParcel nativeAdOptionsParcel = null;
        List list3 = null;
        long j2 = 0;
        CapabilityParcel capabilityParcel = null;
        String str8 = null;
        float f2 = 0.0f;
        int i5 = 0;
        int i6 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    bundle = zza.q(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    adRequestParcel = (AdRequestParcel) zza.a(parcel, a, AdRequestParcel.CREATOR);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    adSizeParcel = (AdSizeParcel) zza.a(parcel, a, AdSizeParcel.CREATOR);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    str = zza.o(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    applicationInfo = (ApplicationInfo) zza.a(parcel, a, ApplicationInfo.CREATOR);
                    break;
                case C.ENCODING_DTS /*7*/:
                    packageInfo = (PackageInfo) zza.a(parcel, a, PackageInfo.CREATOR);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    str2 = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    str3 = zza.o(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    str4 = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    versionInfoParcel = (VersionInfoParcel) zza.a(parcel, a, VersionInfoParcel.CREATOR);
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    bundle2 = zza.q(parcel, a);
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    i2 = zza.f(parcel, a);
                    break;
                case b.ShimmerFrameLayout_tilt /*14*/:
                    list = zza.B(parcel, a);
                    break;
                case bdd.TwitterButton_strokeWidth /*15*/:
                    bundle3 = zza.q(parcel, a);
                    break;
                case Atom.LONG_HEADER_SIZE /*16*/:
                    z = zza.c(parcel, a);
                    break;
                case bdd.TwitterButton_bounded /*17*/:
                    messenger = (Messenger) zza.a(parcel, a, Messenger.CREATOR);
                    break;
                case bdd.TwitterButton_knockout /*18*/:
                    i3 = zza.f(parcel, a);
                    break;
                case bdd.TwitterButton_iconLayout /*19*/:
                    i4 = zza.f(parcel, a);
                    break;
                case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                    f = zza.k(parcel, a);
                    break;
                case bdd.TweetView_mediaTopMargin /*21*/:
                    str5 = zza.o(parcel, a);
                    break;
                case bdd.TweetView_linkSelectedColor /*25*/:
                    j = zza.h(parcel, a);
                    break;
                case bdd.TweetView_previewFlags /*26*/:
                    str6 = zza.o(parcel, a);
                    break;
                case OggUtil.PAGE_HEADER_SIZE /*27*/:
                    list2 = zza.B(parcel, a);
                    break;
                case bdd.TweetView_inlineActionBarPaddingNormal /*28*/:
                    str7 = zza.o(parcel, a);
                    break;
                case bdd.TweetView_tweetViewLayoutId /*29*/:
                    nativeAdOptionsParcel = (NativeAdOptionsParcel) zza.a(parcel, a, NativeAdOptionsParcel.CREATOR);
                    break;
                case bdd.AppCompatTheme_actionModeSplitBackground /*30*/:
                    list3 = zza.B(parcel, a);
                    break;
                case bdd.AppCompatTheme_actionModeCloseDrawable /*31*/:
                    j2 = zza.h(parcel, a);
                    break;
                case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                    capabilityParcel = (CapabilityParcel) zza.a(parcel, a, CapabilityParcel.CREATOR);
                    break;
                case bdd.AppCompatTheme_actionModeCopyDrawable /*33*/:
                    str8 = zza.o(parcel, a);
                    break;
                case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                    f2 = zza.k(parcel, a);
                    break;
                case bdd.AppCompatTheme_actionModeSelectAllDrawable /*35*/:
                    i5 = zza.f(parcel, a);
                    break;
                case bdd.AppCompatTheme_actionModeShareDrawable /*36*/:
                    i6 = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new AdRequestInfoParcel(i, bundle, adRequestParcel, adSizeParcel, str, applicationInfo, packageInfo, str2, str3, str4, versionInfoParcel, bundle2, i2, list, bundle3, z, messenger, i3, i4, f, str5, j, str6, list2, str7, nativeAdOptionsParcel, list3, j2, capabilityParcel, str8, f2, i5, i6);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AdRequestInfoParcel[] a(int i) {
        return new AdRequestInfoParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
