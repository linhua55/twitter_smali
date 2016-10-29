package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class aa implements Creator<LargeParcelTeleporter> {
    static void a(LargeParcelTeleporter largeParcelTeleporter, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, largeParcelTeleporter.a);
        a.a(parcel, 2, largeParcelTeleporter.b, i, false);
        a.a(parcel, a);
    }

    public LargeParcelTeleporter a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    parcelFileDescriptor = (ParcelFileDescriptor) zza.a(parcel, a, ParcelFileDescriptor.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new LargeParcelTeleporter(i, parcelFileDescriptor);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LargeParcelTeleporter[] a(int i) {
        return new LargeParcelTeleporter[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
