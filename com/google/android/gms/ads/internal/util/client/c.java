package com.google.android.gms.ads.internal.util.client;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class c implements Creator<VersionInfoParcel> {
    static void a(VersionInfoParcel versionInfoParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, versionInfoParcel.a);
        a.a(parcel, 2, versionInfoParcel.b, false);
        a.a(parcel, 3, versionInfoParcel.c);
        a.a(parcel, 4, versionInfoParcel.d);
        a.a(parcel, 5, versionInfoParcel.e);
        a.a(parcel, a);
    }

    public VersionInfoParcel a(Parcel parcel) {
        boolean z = false;
        int b = zza.b(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i3 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    i2 = zza.f(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    i = zza.f(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    z = zza.c(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new VersionInfoParcel(i3, str, i2, i, z);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public VersionInfoParcel[] a(int i) {
        return new VersionInfoParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
