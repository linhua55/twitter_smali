package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class j implements Creator<RecordConsentRequest> {
    static void a(RecordConsentRequest recordConsentRequest, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, recordConsentRequest.a);
        a.a(parcel, 2, recordConsentRequest.a(), i, false);
        a.a(parcel, 3, recordConsentRequest.b(), i, false);
        a.a(parcel, 4, recordConsentRequest.c(), false);
        a.a(parcel, a);
    }

    public RecordConsentRequest a(Parcel parcel) {
        String str = null;
        int b = zza.b(parcel);
        int i = 0;
        Scope[] scopeArr = null;
        Account account = null;
        while (parcel.dataPosition() < b) {
            Scope[] scopeArr2;
            Account account2;
            int f;
            String str2;
            int a = zza.a(parcel);
            String str3;
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str3 = str;
                    scopeArr2 = scopeArr;
                    account2 = account;
                    f = zza.f(parcel, a);
                    str2 = str3;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    f = i;
                    Scope[] scopeArr3 = scopeArr;
                    account2 = (Account) zza.a(parcel, a, Account.CREATOR);
                    str2 = str;
                    scopeArr2 = scopeArr3;
                    break;
                case Util.TYPE_OTHER /*3*/:
                    account2 = account;
                    f = i;
                    str3 = str;
                    scopeArr2 = (Scope[]) zza.b(parcel, a, Scope.CREATOR);
                    str2 = str3;
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str2 = zza.o(parcel, a);
                    scopeArr2 = scopeArr;
                    account2 = account;
                    f = i;
                    break;
                default:
                    zza.b(parcel, a);
                    str2 = str;
                    scopeArr2 = scopeArr;
                    account2 = account;
                    f = i;
                    break;
            }
            i = f;
            account = account2;
            scopeArr = scopeArr2;
            str = str2;
        }
        if (parcel.dataPosition() == b) {
            return new RecordConsentRequest(i, account, scopeArr, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public RecordConsentRequest[] a(int i) {
        return new RecordConsentRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
