package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.ArrayList;

public class f implements Creator<GoogleSignInOptions> {
    static void a(GoogleSignInOptions googleSignInOptions, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, googleSignInOptions.e);
        a.c(parcel, 2, googleSignInOptions.a(), false);
        a.a(parcel, 3, googleSignInOptions.b(), i, false);
        a.a(parcel, 4, googleSignInOptions.c());
        a.a(parcel, 5, googleSignInOptions.d());
        a.a(parcel, 6, googleSignInOptions.e());
        a.a(parcel, 7, googleSignInOptions.f(), false);
        a.a(parcel, 8, googleSignInOptions.g(), false);
        a.a(parcel, a);
    }

    public GoogleSignInOptions a(Parcel parcel) {
        String str = null;
        boolean z = false;
        int b = zza.b(parcel);
        String str2 = null;
        boolean z2 = false;
        boolean z3 = false;
        Account account = null;
        ArrayList arrayList = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    arrayList = zza.c(parcel, a, Scope.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    account = (Account) zza.a(parcel, a, Account.CREATOR);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    z3 = zza.c(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    z2 = zza.c(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    z = zza.c(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    str2 = zza.o(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    str = zza.o(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new GoogleSignInOptions(i, arrayList, account, z3, z2, z, str2, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public GoogleSignInOptions[] a(int i) {
        return new GoogleSignInOptions[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
