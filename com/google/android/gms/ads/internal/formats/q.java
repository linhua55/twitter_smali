package com.google.android.gms.ads.internal.formats;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class q implements Creator<NativeAdOptionsParcel> {
    static void a(NativeAdOptionsParcel nativeAdOptionsParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, nativeAdOptionsParcel.a);
        a.a(parcel, 2, nativeAdOptionsParcel.b);
        a.a(parcel, 3, nativeAdOptionsParcel.c);
        a.a(parcel, 4, nativeAdOptionsParcel.d);
        a.a(parcel, a);
    }

    public NativeAdOptionsParcel a(Parcel parcel) {
        boolean z = false;
        int b = zza.b(parcel);
        int i = 0;
        boolean z2 = false;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    z2 = zza.c(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    i = zza.f(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    z = zza.c(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new NativeAdOptionsParcel(i2, z2, i, z);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public NativeAdOptionsParcel[] a(int i) {
        return new NativeAdOptionsParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
