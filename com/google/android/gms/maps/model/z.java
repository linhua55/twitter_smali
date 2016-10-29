package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class z implements Creator<TileOverlayOptions> {
    static void a(TileOverlayOptions tileOverlayOptions, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, tileOverlayOptions.a());
        a.a(parcel, 2, tileOverlayOptions.b(), false);
        a.a(parcel, 3, tileOverlayOptions.d());
        a.a(parcel, 4, tileOverlayOptions.c());
        a.a(parcel, 5, tileOverlayOptions.e());
        a.a(parcel, a);
    }

    public TileOverlayOptions a(Parcel parcel) {
        boolean z = false;
        int b = zza.b(parcel);
        IBinder iBinder = null;
        float f = 0.0f;
        boolean z2 = true;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    iBinder = zza.p(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    z = zza.c(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    f = zza.k(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    z2 = zza.c(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new TileOverlayOptions(i, iBinder, z, f, z2);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public TileOverlayOptions[] a(int i) {
        return new TileOverlayOptions[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
