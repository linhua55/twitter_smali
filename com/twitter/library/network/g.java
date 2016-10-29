package com.twitter.library.network;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import bbu;
import cfb;
import com.google.android.gms.auth.a;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class g implements e {
    private final Context a;

    g(Context context) {
        this.a = context.getApplicationContext();
    }

    public String a() {
        Object c = c();
        if (aj.b(c)) {
            try {
                return a.a(this.a, c, "audience:server:client_id:695118608688-pm7k6hvatrgesugmkcti68kndb9e3tu6.apps.googleusercontent.com");
            } catch (Throwable e) {
                bbu.a((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(0).d(cfb.a(e))).b(new String[]{"google_auth_token::::error"})).c(an.a(this.a).e.toString()));
            }
        }
        return null;
    }

    public List<String> b() {
        Account[] d = d();
        List arrayList = new ArrayList(d.length);
        for (Account account : d) {
            arrayList.add(account.name);
        }
        return arrayList;
    }

    public String c() {
        Account[] d = d();
        if (d.length > 0) {
            return d[0].name;
        }
        return null;
    }

    private Account[] d() {
        AccountManager accountManager = AccountManager.get(this.a);
        if (accountManager != null) {
            return accountManager.getAccountsByType("com.google");
        }
        return new Account[0];
    }
}
