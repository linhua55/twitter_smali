package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class au implements Creator<EventParcel> {
    static void a(EventParcel eventParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, eventParcel.a);
        a.a(parcel, 2, eventParcel.b, false);
        a.a(parcel, 3, eventParcel.c, i, false);
        a.a(parcel, 4, eventParcel.d, false);
        a.a(parcel, 5, eventParcel.e);
        a.a(parcel, a);
    }

    public EventParcel a(Parcel parcel) {
        String str = null;
        int b = zza.b(parcel);
        int i = 0;
        long j = 0;
        EventParams eventParams = null;
        String str2 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str2 = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    eventParams = (EventParams) zza.a(parcel, a, EventParams.CREATOR);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str = zza.o(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    j = zza.h(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new EventParcel(i, str2, eventParams, str, j);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public EventParcel[] a(int i) {
        return new EventParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
