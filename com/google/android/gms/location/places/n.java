package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class n implements Creator<UserDataType> {
    static void a(UserDataType userDataType, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, userDataType.f, false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, userDataType.e);
        a.a(parcel, 2, userDataType.g);
        a.a(parcel, a);
    }

    public UserDataType a(Parcel parcel) {
        int i = 0;
        int b = zza.b(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str = zza.o(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i = zza.f(parcel, a);
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
            return new UserDataType(i2, str, i);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public UserDataType[] a(int i) {
        return new UserDataType[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
