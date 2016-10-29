package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class y implements Creator<Tile> {
    static void a(Tile tile, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, tile.a());
        a.a(parcel, 2, tile.a);
        a.a(parcel, 3, tile.b);
        a.a(parcel, 4, tile.c, false);
        a.a(parcel, a);
    }

    public Tile a(Parcel parcel) {
        int i = 0;
        int b = zza.b(parcel);
        byte[] bArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i3 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    i = zza.f(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    bArr = zza.r(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new Tile(i3, i2, i, bArr);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public Tile[] a(int i) {
        return new Tile[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
