package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.server.response.FastJsonResponse.Field;
import com.google.android.gms.common.server.response.FieldMappingDictionary.FieldMapPair;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class c implements Creator<FieldMapPair> {
    static void a(FieldMapPair fieldMapPair, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, fieldMapPair.a);
        a.a(parcel, 2, fieldMapPair.b, false);
        a.a(parcel, 3, fieldMapPair.c, i, false);
        a.a(parcel, a);
    }

    public FieldMapPair a(Parcel parcel) {
        Field field = null;
        int b = zza.b(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    field = (Field) zza.a(parcel, a, Field.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new FieldMapPair(i, str, field);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public FieldMapPair[] a(int i) {
        return new FieldMapPair[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
