package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class ac implements Creator<Scope> {
    static void a(Scope scope, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, scope.a);
        a.a(parcel, 2, scope.a(), false);
        a.a(parcel, a);
    }

    public Scope a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str = zza.o(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new Scope(i, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public Scope[] a(int i) {
        return new Scope[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
