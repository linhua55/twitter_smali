package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class d implements Creator<EmailSignInOptions> {
    static void a(EmailSignInOptions emailSignInOptions, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, emailSignInOptions.a);
        a.a(parcel, 2, emailSignInOptions.a(), i, false);
        a.a(parcel, 3, emailSignInOptions.c(), false);
        a.a(parcel, 4, emailSignInOptions.b(), i, false);
        a.a(parcel, a);
    }

    public EmailSignInOptions a(Parcel parcel) {
        Uri uri = null;
        int b = zza.b(parcel);
        int i = 0;
        String str = null;
        Uri uri2 = null;
        while (parcel.dataPosition() < b) {
            String str2;
            Uri uri3;
            int f;
            Uri uri4;
            int a = zza.a(parcel);
            Uri uri5;
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    uri5 = uri;
                    str2 = str;
                    uri3 = uri2;
                    f = zza.f(parcel, a);
                    uri4 = uri5;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    f = i;
                    String str3 = str;
                    uri3 = (Uri) zza.a(parcel, a, Uri.CREATOR);
                    uri4 = uri;
                    str2 = str3;
                    break;
                case Util.TYPE_OTHER /*3*/:
                    uri3 = uri2;
                    f = i;
                    uri5 = uri;
                    str2 = zza.o(parcel, a);
                    uri4 = uri5;
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    uri4 = (Uri) zza.a(parcel, a, Uri.CREATOR);
                    str2 = str;
                    uri3 = uri2;
                    f = i;
                    break;
                default:
                    zza.b(parcel, a);
                    uri4 = uri;
                    str2 = str;
                    uri3 = uri2;
                    f = i;
                    break;
            }
            i = f;
            uri2 = uri3;
            str = str2;
            uri = uri4;
        }
        if (parcel.dataPosition() == b) {
            return new EmailSignInOptions(i, uri2, str, uri);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public EmailSignInOptions[] a(int i) {
        return new EmailSignInOptions[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
