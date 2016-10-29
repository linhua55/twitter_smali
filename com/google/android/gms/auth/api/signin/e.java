package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public class e implements Creator<GoogleSignInAccount> {
    static void a(GoogleSignInAccount googleSignInAccount, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, googleSignInAccount.b);
        a.a(parcel, 2, googleSignInAccount.a(), false);
        a.a(parcel, 3, googleSignInAccount.b(), false);
        a.a(parcel, 4, googleSignInAccount.c(), false);
        a.a(parcel, 5, googleSignInAccount.d(), false);
        a.a(parcel, 6, googleSignInAccount.e(), i, false);
        a.a(parcel, 7, googleSignInAccount.f(), false);
        a.a(parcel, 8, googleSignInAccount.g());
        a.a(parcel, 9, googleSignInAccount.h(), false);
        a.c(parcel, 10, googleSignInAccount.c, false);
        a.a(parcel, a);
    }

    public GoogleSignInAccount a(Parcel parcel) {
        List list = null;
        int b = zza.b(parcel);
        int i = 0;
        long j = 0;
        String str = null;
        String str2 = null;
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
                    str2 = zza.o(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    j = zza.h(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    str = zza.o(parcel, a);
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    list = zza.c(parcel, a, Scope.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new GoogleSignInAccount(i, str6, str5, str4, str3, uri, str2, j, str, list);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public GoogleSignInAccount[] a(int i) {
        return new GoogleSignInAccount[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
