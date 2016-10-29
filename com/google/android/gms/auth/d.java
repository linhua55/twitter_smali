package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public class d implements Creator<AccountChangeEventsResponse> {
    static void a(AccountChangeEventsResponse accountChangeEventsResponse, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, accountChangeEventsResponse.a);
        a.c(parcel, 2, accountChangeEventsResponse.b, false);
        a.a(parcel, a);
    }

    public AccountChangeEventsResponse a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        List list = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    list = zza.c(parcel, a, AccountChangeEvent.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new AccountChangeEventsResponse(i, list);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AccountChangeEventsResponse[] a(int i) {
        return new AccountChangeEventsResponse[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
