package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.server.response.FieldMappingDictionary.Entry;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.ArrayList;

public class d implements Creator<FieldMappingDictionary> {
    static void a(FieldMappingDictionary fieldMappingDictionary, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, fieldMappingDictionary.b());
        a.c(parcel, 2, fieldMappingDictionary.c(), false);
        a.a(parcel, 3, fieldMappingDictionary.d(), false);
        a.a(parcel, a);
    }

    public FieldMappingDictionary a(Parcel parcel) {
        String str = null;
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
                case Util.TYPE_OTHER /*3*/:
                    str = zza.o(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new FieldMappingDictionary(i, arrayList, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public FieldMappingDictionary[] a(int i) {
        return new FieldMappingDictionary[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
