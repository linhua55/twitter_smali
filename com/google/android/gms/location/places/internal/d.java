package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public class d implements Creator<PlaceLocalization> {
    static void a(PlaceLocalization placeLocalization, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, placeLocalization.b, false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, placeLocalization.a);
        a.a(parcel, 2, placeLocalization.c, false);
        a.a(parcel, 3, placeLocalization.d, false);
        a.a(parcel, 4, placeLocalization.e, false);
        a.b(parcel, 5, placeLocalization.f, false);
        a.a(parcel, a);
    }

    public PlaceLocalization a(Parcel parcel) {
        List list = null;
        int b = zza.b(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str4 = zza.o(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str3 = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str2 = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str = zza.o(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    list = zza.B(parcel, a);
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    i = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new PlaceLocalization(i, str4, str3, str2, str, list);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PlaceLocalization[] a(int i) {
        return new PlaceLocalization[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
