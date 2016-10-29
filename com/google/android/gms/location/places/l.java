package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class l implements Creator<PlaceReport> {
    static void a(PlaceReport placeReport, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, placeReport.a);
        a.a(parcel, 2, placeReport.a(), false);
        a.a(parcel, 3, placeReport.b(), false);
        a.a(parcel, 4, placeReport.c(), false);
        a.a(parcel, a);
    }

    public PlaceReport a(Parcel parcel) {
        String str = null;
        int b = zza.b(parcel);
        int i = 0;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
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
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new PlaceReport(i, str3, str2, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PlaceReport[] a(int i) {
        return new PlaceReport[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
