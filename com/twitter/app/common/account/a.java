package com.twitter.app.common.account;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import com.twitter.util.aj;
import java.io.IOException;

/* compiled from: Twttr */
public class a {
    public static final c a;
    private final AccountManager b;
    private final Account c;

    static {
        a = new c(null);
    }

    a(AccountManager accountManager, Account account) {
        this.b = accountManager;
        this.c = account;
    }

    public Account a() {
        return this.c;
    }

    public void a(String str, String str2) {
        this.b.setUserData(this.c, str, str2);
    }

    public String a(String str) {
        return this.b.getUserData(this.c, str);
    }

    public UserIdentifier b() {
        CharSequence a = a("account_user_id");
        if (aj.a(a)) {
            return UserIdentifier.a;
        }
        return new UserIdentifier(Long.valueOf(a).longValue());
    }

    public void b(String str, String str2) {
        this.b.setAuthToken(this.c, str, str2);
    }

    public void a(UserIdentifier userIdentifier) {
        a("account_user_id", userIdentifier.c());
    }

    public void b(String str) {
        this.b.setPassword(this.c, str);
    }

    public AccountManagerFuture<Boolean> c() {
        return this.b.removeAccount(this.c, null, null);
    }

    public String c(String str) {
        return this.b.peekAuthToken(this.c, str);
    }

    public String d() {
        return this.c.name;
    }

    public int e() {
        CharSequence a = a("account_field_version");
        if (aj.a(a)) {
            return 1;
        }
        int intValue = Integer.valueOf(a).intValue();
        if (intValue >= 1) {
            return intValue;
        }
        return 1;
    }

    public void a(int i) {
        a("account_field_version", String.valueOf(i));
    }

    public String f() {
        return this.b.getPassword(this.c);
    }

    public String a(String str, boolean z) throws AuthenticatorException, OperationCanceledException, IOException {
        return this.b.blockingGetAuthToken(this.c, str, z);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Account) {
            return this.c.equals(obj);
        }
        if ((obj instanceof a) && this.c.equals(((a) obj).c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.c.hashCode();
    }
}
