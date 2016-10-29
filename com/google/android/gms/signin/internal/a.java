package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class a implements Creator<AuthAccountResult> {
    static void a(AuthAccountResult authAccountResult, Parcel parcel, int i) {
        int a = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, authAccountResult.a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, authAccountResult.b());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, authAccountResult.c(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a);
    }

    public AuthAccountResult a(Parcel parcel) {
        int i = 0;
        int b = zza.b(parcel);
        Intent intent = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i = zza.f(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    intent = (Intent) zza.a(parcel, a, Intent.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new AuthAccountResult(i2, i, intent);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AuthAccountResult[] a(int i) {
        return new AuthAccountResult[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
