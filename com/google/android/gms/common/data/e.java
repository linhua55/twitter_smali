package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class e implements Creator<BitmapTeleporter> {
    static void a(BitmapTeleporter bitmapTeleporter, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, bitmapTeleporter.a);
        a.a(parcel, 2, bitmapTeleporter.b, i, false);
        a.a(parcel, 3, bitmapTeleporter.c);
        a.a(parcel, a);
    }

    public BitmapTeleporter a(Parcel parcel) {
        int i = 0;
        int b = zza.b(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            ParcelFileDescriptor parcelFileDescriptor2;
            int f;
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    int i3 = i;
                    parcelFileDescriptor2 = parcelFileDescriptor;
                    f = zza.f(parcel, a);
                    a = i3;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    f = i2;
                    ParcelFileDescriptor parcelFileDescriptor3 = (ParcelFileDescriptor) zza.a(parcel, a, ParcelFileDescriptor.CREATOR);
                    a = i;
                    parcelFileDescriptor2 = parcelFileDescriptor3;
                    break;
                case Util.TYPE_OTHER /*3*/:
                    a = zza.f(parcel, a);
                    parcelFileDescriptor2 = parcelFileDescriptor;
                    f = i2;
                    break;
                default:
                    zza.b(parcel, a);
                    a = i;
                    parcelFileDescriptor2 = parcelFileDescriptor;
                    f = i2;
                    break;
            }
            i2 = f;
            parcelFileDescriptor = parcelFileDescriptor2;
            i = a;
        }
        if (parcel.dataPosition() == b) {
            return new BitmapTeleporter(i2, parcelFileDescriptor, i);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public BitmapTeleporter[] a(int i) {
        return new BitmapTeleporter[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
