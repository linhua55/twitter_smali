package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class at implements Creator<EventParams> {
    static void a(EventParams eventParams, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, eventParams.a);
        a.a(parcel, 2, eventParams.b(), false);
        a.a(parcel, a);
    }

    public EventParams a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        Bundle bundle = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    bundle = zza.q(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new EventParams(i, bundle);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public EventParams[] a(int i) {
        return new EventParams[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
