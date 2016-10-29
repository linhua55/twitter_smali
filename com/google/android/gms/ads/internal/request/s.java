package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bdd;
import java.util.List;

public class s implements Creator<AdResponseParcel> {
    static void a(AdResponseParcel adResponseParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, adResponseParcel.a);
        a.a(parcel, 2, adResponseParcel.b, false);
        a.a(parcel, 3, adResponseParcel.c, false);
        a.b(parcel, 4, adResponseParcel.d, false);
        a.a(parcel, 5, adResponseParcel.e);
        a.b(parcel, 6, adResponseParcel.f, false);
        a.a(parcel, 7, adResponseParcel.g);
        a.a(parcel, 8, adResponseParcel.h);
        a.a(parcel, 9, adResponseParcel.i);
        a.b(parcel, 10, adResponseParcel.j, false);
        a.a(parcel, 11, adResponseParcel.k);
        a.a(parcel, 12, adResponseParcel.l);
        a.a(parcel, 13, adResponseParcel.m, false);
        a.a(parcel, 14, adResponseParcel.n);
        a.a(parcel, 15, adResponseParcel.o, false);
        a.a(parcel, 19, adResponseParcel.q, false);
        a.a(parcel, 18, adResponseParcel.p);
        a.a(parcel, 21, adResponseParcel.r, false);
        a.a(parcel, 23, adResponseParcel.t);
        a.a(parcel, 22, adResponseParcel.s);
        a.a(parcel, 25, adResponseParcel.v);
        a.a(parcel, 24, adResponseParcel.u);
        a.a(parcel, 27, adResponseParcel.x);
        a.a(parcel, 26, adResponseParcel.w);
        a.a(parcel, 29, adResponseParcel.z, false);
        a.a(parcel, 28, adResponseParcel.y, i, false);
        a.a(parcel, 31, adResponseParcel.B);
        a.a(parcel, 30, adResponseParcel.A, false);
        a.b(parcel, 34, adResponseParcel.E, false);
        a.b(parcel, 35, adResponseParcel.F, false);
        a.a(parcel, 32, adResponseParcel.C);
        a.a(parcel, 33, adResponseParcel.D, i, false);
        a.a(parcel, 36, adResponseParcel.G);
        a.a(parcel, a);
    }

    public AdResponseParcel a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        List list = null;
        int i2 = 0;
        List list2 = null;
        long j = 0;
        boolean z = false;
        long j2 = 0;
        List list3 = null;
        long j3 = 0;
        int i3 = 0;
        String str3 = null;
        long j4 = 0;
        String str4 = null;
        boolean z2 = false;
        String str5 = null;
        String str6 = null;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i4 = 0;
        LargeParcelTeleporter largeParcelTeleporter = null;
        String str7 = null;
        String str8 = null;
        boolean z8 = false;
        boolean z9 = false;
        RewardItemParcel rewardItemParcel = null;
        List list4 = null;
        List list5 = null;
        boolean z10 = false;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str2 = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    list = zza.B(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    i2 = zza.f(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    list2 = zza.B(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    j = zza.h(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    z = zza.c(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    j2 = zza.h(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    list3 = zza.B(parcel, a);
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    j3 = zza.h(parcel, a);
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    i3 = zza.f(parcel, a);
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    str3 = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_tilt /*14*/:
                    j4 = zza.h(parcel, a);
                    break;
                case bdd.TwitterButton_strokeWidth /*15*/:
                    str4 = zza.o(parcel, a);
                    break;
                case bdd.TwitterButton_knockout /*18*/:
                    z2 = zza.c(parcel, a);
                    break;
                case bdd.TwitterButton_iconLayout /*19*/:
                    str5 = zza.o(parcel, a);
                    break;
                case bdd.TweetView_mediaTopMargin /*21*/:
                    str6 = zza.o(parcel, a);
                    break;
                case bdd.TweetView_mediaBottomMargin /*22*/:
                    z3 = zza.c(parcel, a);
                    break;
                case bdd.TweetView_mediaDivider /*23*/:
                    z4 = zza.c(parcel, a);
                    break;
                case bdd.TweetView_autoLink /*24*/:
                    z5 = zza.c(parcel, a);
                    break;
                case bdd.TweetView_linkSelectedColor /*25*/:
                    z6 = zza.c(parcel, a);
                    break;
                case bdd.TweetView_previewFlags /*26*/:
                    z7 = zza.c(parcel, a);
                    break;
                case OggUtil.PAGE_HEADER_SIZE /*27*/:
                    i4 = zza.f(parcel, a);
                    break;
                case bdd.TweetView_inlineActionBarPaddingNormal /*28*/:
                    largeParcelTeleporter = (LargeParcelTeleporter) zza.a(parcel, a, LargeParcelTeleporter.CREATOR);
                    break;
                case bdd.TweetView_tweetViewLayoutId /*29*/:
                    str7 = zza.o(parcel, a);
                    break;
                case bdd.AppCompatTheme_actionModeSplitBackground /*30*/:
                    str8 = zza.o(parcel, a);
                    break;
                case bdd.AppCompatTheme_actionModeCloseDrawable /*31*/:
                    z8 = zza.c(parcel, a);
                    break;
                case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                    z9 = zza.c(parcel, a);
                    break;
                case bdd.AppCompatTheme_actionModeCopyDrawable /*33*/:
                    rewardItemParcel = (RewardItemParcel) zza.a(parcel, a, RewardItemParcel.CREATOR);
                    break;
                case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                    list4 = zza.B(parcel, a);
                    break;
                case bdd.AppCompatTheme_actionModeSelectAllDrawable /*35*/:
                    list5 = zza.B(parcel, a);
                    break;
                case bdd.AppCompatTheme_actionModeShareDrawable /*36*/:
                    z10 = zza.c(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new AdResponseParcel(i, str, str2, list, i2, list2, j, z, j2, list3, j3, i3, str3, j4, str4, z2, str5, str6, z3, z4, z5, z6, z7, i4, largeParcelTeleporter, str7, str8, z8, z9, rewardItemParcel, list4, list5, z10);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AdResponseParcel[] a(int i) {
        return new AdResponseParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
