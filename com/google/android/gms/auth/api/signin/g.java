package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class g implements Creator<SignInAccount> {
    static void a(SignInAccount signInAccount, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, signInAccount.a);
        a.a(parcel, 2, signInAccount.h(), false);
        a.a(parcel, 3, signInAccount.a(), false);
        a.a(parcel, 4, signInAccount.b(), false);
        a.a(parcel, 5, signInAccount.c(), false);
        a.a(parcel, 6, signInAccount.d(), i, false);
        a.a(parcel, 7, signInAccount.e(), i, false);
        a.a(parcel, 8, signInAccount.f(), false);
        a.a(parcel, 9, signInAccount.g(), false);
        a.a(parcel, a);
    }

    public SignInAccount a(Parcel parcel) {
        String str = null;
        int b = zza.b(parcel);
        int i = 0;
        String str2 = TtmlNode.ANONYMOUS_REGION_ID;
        GoogleSignInAccount googleSignInAccount = null;
        Uri uri = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str6 = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str5 = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str4 = zza.o(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    str3 = zza.o(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    uri = (Uri) zza.a(parcel, a, Uri.CREATOR);
                    break;
                case C.ENCODING_DTS /*7*/:
                    googleSignInAccount = (GoogleSignInAccount) zza.a(parcel, a, GoogleSignInAccount.CREATOR);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    str2 = zza.o(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    str = zza.o(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new SignInAccount(i, str6, str5, str4, str3, uri, googleSignInAccount, str2, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public SignInAccount[] a(int i) {
        return new SignInAccount[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
