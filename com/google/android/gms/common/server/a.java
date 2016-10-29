package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class a implements Creator<FavaDiagnosticsEntity> {
    static void a(FavaDiagnosticsEntity favaDiagnosticsEntity, Parcel parcel, int i) {
        int a = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, favaDiagnosticsEntity.a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, favaDiagnosticsEntity.b, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, favaDiagnosticsEntity.c);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a);
    }

    public FavaDiagnosticsEntity a(Parcel parcel) {
        int i = 0;
        int b = zza.b(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    i = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new FavaDiagnosticsEntity(i2, str, i);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public FavaDiagnosticsEntity[] a(int i) {
        return new FavaDiagnosticsEntity[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
