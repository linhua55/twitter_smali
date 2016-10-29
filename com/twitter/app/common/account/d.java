package com.twitter.app.common.account;

import android.accounts.Account;
import android.accounts.AccountManager;
import com.twitter.app.common.app.a;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.j;
import java.util.List;

/* compiled from: Twttr */
public class d {
    private static d a;
    private final AccountManager b;
    private final String c;
    private final f d;

    public d(AccountManager accountManager, String str, f fVar) {
        this.b = accountManager;
        this.c = str;
        this.d = fVar;
    }

    public static d a() {
        return a != null ? a : a.a().h();
    }

    public a a(UserIdentifier userIdentifier) {
        for (Account a : this.b.getAccountsByType(this.c)) {
            a a2 = a(a);
            if (a2.b().a(userIdentifier)) {
                return a2;
            }
        }
        return null;
    }

    public a a(Account account) {
        return a(new a(this.b, account));
    }

    public int b() {
        return this.b.getAccountsByType(this.c).length;
    }

    public List<a> c() {
        Account[] accountsByType = this.b.getAccountsByType(this.c);
        Object[] objArr = new a[accountsByType.length];
        for (int i = 0; i < accountsByType.length; i++) {
            objArr[i] = a(accountsByType[i]);
        }
        return ImmutableList.a(objArr);
    }

    public a a(UserIdentifier userIdentifier, String str) {
        a a = a(userIdentifier);
        if (a == null) {
            synchronized (this.b) {
                a = a(userIdentifier);
                if (a == null) {
                    a = a(str, userIdentifier);
                }
            }
        }
        return a;
    }

    public void a(String str) {
        this.b.invalidateAuthToken(this.c, str);
    }

    public a a(a aVar, String str, e eVar) {
        synchronized (this.b) {
            a a = a(str, aVar.b());
            if (a != null) {
                if (eVar != null) {
                    eVar.a(aVar, a);
                }
                aVar.c();
                return a;
            }
            return null;
        }
    }

    private a a(a aVar) {
        if (this.d != null) {
            int e = aVar.e();
            int a = this.d.a();
            if (e < a) {
                synchronized (this.b) {
                    if (aVar.e() >= a) {
                    } else {
                        this.d.a(aVar, e, a);
                        int e2 = aVar.e();
                        j.a(e2 == a, "Expected AppAccount version " + a + " after upgrade, but instead got version " + e2);
                    }
                }
            }
        }
        return aVar;
    }

    private a a(String str, UserIdentifier userIdentifier) {
        a aVar = new a(this.b, new Account(str, this.c));
        if (!this.b.addAccountExplicitly(aVar.a(), null, null)) {
            return null;
        }
        aVar.a(userIdentifier);
        aVar.b(null);
        if (this.d != null) {
            aVar.a(this.d.a());
        }
        return aVar;
    }
}
