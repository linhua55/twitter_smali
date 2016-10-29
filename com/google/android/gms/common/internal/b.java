package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.n;

public class b extends at {
    int a;
    private Account b;
    private Context c;

    public static Account a(as asVar) {
        Account account = null;
        if (asVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = asVar.a();
            } catch (RemoteException e) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }

    public Account a() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == this.a) {
            return this.b;
        }
        if (n.zzf(this.c, callingUid)) {
            this.a = callingUid;
            return this.b;
        }
        throw new SecurityException("Caller is not GooglePlayServices");
    }

    public boolean equals(Object obj) {
        return this == obj ? true : !(obj instanceof b) ? false : this.b.equals(((b) obj).b);
    }
}
