package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.auth.api.signin.EmailSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class b implements Creator<SignInConfiguration> {
    static void a(SignInConfiguration signInConfiguration, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, signInConfiguration.a);
        a.a(parcel, 2, signInConfiguration.a(), false);
        a.a(parcel, 3, signInConfiguration.b(), false);
        a.a(parcel, 4, signInConfiguration.c(), i, false);
        a.a(parcel, 5, signInConfiguration.d(), i, false);
        a.a(parcel, 7, signInConfiguration.e(), false);
        a.a(parcel, a);
    }

    public SignInConfiguration a(Parcel parcel) {
        String str = null;
        int b = zza.b(parcel);
        int i = 0;
        GoogleSignInOptions googleSignInOptions = null;
        EmailSignInOptions emailSignInOptions = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str3 = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str2 = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    emailSignInOptions = (EmailSignInOptions) zza.a(parcel, a, EmailSignInOptions.CREATOR);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    googleSignInOptions = (GoogleSignInOptions) zza.a(parcel, a, GoogleSignInOptions.CREATOR);
                    break;
                case C.ENCODING_DTS /*7*/:
                    str = zza.o(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new SignInConfiguration(i, str3, str2, emailSignInOptions, googleSignInOptions, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public SignInConfiguration[] a(int i) {
        return new SignInConfiguration[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
