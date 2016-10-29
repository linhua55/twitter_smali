package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public class c implements Creator<CheckServerAuthResult> {
    static void a(CheckServerAuthResult checkServerAuthResult, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, checkServerAuthResult.a);
        a.a(parcel, 2, checkServerAuthResult.b);
        a.c(parcel, 3, checkServerAuthResult.c, false);
        a.a(parcel, a);
    }

    public CheckServerAuthResult a(Parcel parcel) {
        boolean z = false;
        int b = zza.b(parcel);
        List list = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    z = zza.c(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    list = zza.c(parcel, a, Scope.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new CheckServerAuthResult(i, z, list);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public CheckServerAuthResult[] a(int i) {
        return new CheckServerAuthResult[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
