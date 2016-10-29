package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.server.converter.StringToIntConverter.Entry;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.ArrayList;

public class b implements Creator<StringToIntConverter> {
    static void a(StringToIntConverter stringToIntConverter, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, stringToIntConverter.a());
        a.c(parcel, 2, stringToIntConverter.b(), false);
        a.a(parcel, a);
    }

    public StringToIntConverter a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    arrayList = zza.c(parcel, a, Entry.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new StringToIntConverter(i, arrayList);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public StringToIntConverter[] a(int i) {
        return new StringToIntConverter[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
