package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.auth.firstparty.shared.zzd;
import com.google.android.gms.internal.ac;
import java.io.IOException;

final class f implements g<TokenData> {
    final /* synthetic */ Account a;
    final /* synthetic */ String b;
    final /* synthetic */ Bundle c;

    f(Account account, String str, Bundle bundle) {
        this.a = account;
        this.b = str;
        this.c = bundle;
    }

    public TokenData a(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle bundle = (Bundle) e.a(ac.a(iBinder).a(this.a, this.b, this.c));
        TokenData a = TokenData.a(bundle, "tokenDetails");
        if (a != null) {
            return a;
        }
        String string = bundle.getString("Error");
        Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
        zzd a2 = zzd.a(string);
        if (zzd.a(a2)) {
            throw new UserRecoverableAuthException(string, intent);
        } else if (zzd.c(a2)) {
            throw new IOException(string);
        } else {
            throw new GoogleAuthException(string);
        }
    }

    public /* synthetic */ Object b(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        return a(iBinder);
    }
}
