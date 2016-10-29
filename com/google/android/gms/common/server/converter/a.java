package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class a implements Creator<ConverterWrapper> {
    static void a(ConverterWrapper converterWrapper, Parcel parcel, int i) {
        int a = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, converterWrapper.a());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, converterWrapper.b(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a);
    }

    public ConverterWrapper a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        StringToIntConverter stringToIntConverter = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    stringToIntConverter = (StringToIntConverter) zza.a(parcel, a, StringToIntConverter.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new ConverterWrapper(i, stringToIntConverter);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public ConverterWrapper[] a(int i) {
        return new ConverterWrapper[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
