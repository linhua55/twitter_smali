package com.google.android.gms.auth.firstparty.shared;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class b implements Creator<FACLData> {
    static void a(FACLData fACLData, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, fACLData.a);
        a.a(parcel, 2, fACLData.b, i, false);
        a.a(parcel, 3, fACLData.c, false);
        a.a(parcel, 4, fACLData.d);
        a.a(parcel, 5, fACLData.e, false);
        a.a(parcel, a);
    }

    public FACLData a(Parcel parcel) {
        boolean z = false;
        String str = null;
        int b = zza.b(parcel);
        String str2 = null;
        FACLConfig fACLConfig = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    fACLConfig = (FACLConfig) zza.a(parcel, a, FACLConfig.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str2 = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    z = zza.c(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    str = zza.o(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new FACLData(i, fACLConfig, str2, z, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public FACLData[] a(int i) {
        return new FACLData[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
