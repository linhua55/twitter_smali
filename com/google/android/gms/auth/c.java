package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class c implements Creator<AccountChangeEventsRequest> {
    static void a(AccountChangeEventsRequest accountChangeEventsRequest, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, accountChangeEventsRequest.a);
        a.a(parcel, 2, accountChangeEventsRequest.b);
        a.a(parcel, 3, accountChangeEventsRequest.c, false);
        a.a(parcel, 4, accountChangeEventsRequest.d, i, false);
        a.a(parcel, a);
    }

    public AccountChangeEventsRequest a(Parcel parcel) {
        Account account = null;
        int i = 0;
        int b = zza.b(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i = zza.f(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    account = (Account) zza.a(parcel, a, Account.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new AccountChangeEventsRequest(i2, i, str, account);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AccountChangeEventsRequest[] a(int i) {
        return new AccountChangeEventsRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
