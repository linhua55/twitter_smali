package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class c implements Creator<SignInButtonConfig> {
    static void a(SignInButtonConfig signInButtonConfig, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, signInButtonConfig.a);
        a.a(parcel, 2, signInButtonConfig.a());
        a.a(parcel, 3, signInButtonConfig.b());
        a.a(parcel, 4, signInButtonConfig.c(), i, false);
        a.a(parcel, a);
    }

    public SignInButtonConfig a(Parcel parcel) {
        int i = 0;
        int b = zza.b(parcel);
        Scope[] scopeArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i3 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    i = zza.f(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    scopeArr = (Scope[]) zza.b(parcel, a, Scope.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new SignInButtonConfig(i3, i2, i, scopeArr);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public SignInButtonConfig[] a(int i) {
        return new SignInButtonConfig[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
