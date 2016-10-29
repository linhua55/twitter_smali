package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class f implements Creator<SafeParcelResponse> {
    static void a(SafeParcelResponse safeParcelResponse, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, safeParcelResponse.d());
        a.a(parcel, 2, safeParcelResponse.e(), false);
        a.a(parcel, 3, safeParcelResponse.f(), i, false);
        a.a(parcel, a);
    }

    public SafeParcelResponse a(Parcel parcel) {
        FieldMappingDictionary fieldMappingDictionary = null;
        int b = zza.b(parcel);
        int i = 0;
        Parcel parcel2 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    parcel2 = zza.C(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    fieldMappingDictionary = (FieldMappingDictionary) zza.a(parcel, a, FieldMappingDictionary.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new SafeParcelResponse(i, parcel2, fieldMappingDictionary);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public SafeParcelResponse[] a(int i) {
        return new SafeParcelResponse[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
