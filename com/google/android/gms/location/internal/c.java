package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class c implements Creator<ClientIdentity> {
    static void a(ClientIdentity clientIdentity, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, clientIdentity.a);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, clientIdentity.a());
        a.a(parcel, 2, clientIdentity.b, false);
        a.a(parcel, a);
    }

    public ClientIdentity a(Parcel parcel) {
        int i = 0;
        int b = zza.b(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str = zza.o(parcel, a);
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    i2 = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new ClientIdentity(i2, i, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public ClientIdentity[] a(int i) {
        return new ClientIdentity[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
