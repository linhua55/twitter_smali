package com.twitter.library.platform.notifications;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.twitter.library.client.l;
import com.twitter.library.client.n;
import com.twitter.library.util.b;

/* compiled from: Twttr */
public class w {
    private final l a;

    private w(l lVar) {
        this.a = lVar;
    }

    public boolean a() {
        return this.a.getBoolean("enabled", true);
    }

    public void a(boolean z) {
        this.a.a().a("enabled", z).apply();
    }

    public long b() {
        return this.a.getLong("last_refresh.", 0);
    }

    public void a(long j) {
        this.a.a().a("last_refresh.", j).apply();
    }

    public static w a(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        a(applicationContext);
        return new w(new l(applicationContext, str, "c2dm"));
    }

    private static void a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("c2dm", 0);
        if (sharedPreferences.contains("ver")) {
            int i = sharedPreferences.getInt("ver", 2);
            if (i < 2) {
                a(sharedPreferences, i);
                return;
            }
            return;
        }
        a(sharedPreferences, 0);
        a(context, sharedPreferences);
    }

    private static void a(SharedPreferences sharedPreferences, int i) {
        int i2;
        Editor edit = sharedPreferences.edit();
        if (i == 0) {
            i2 = 1;
        } else {
            i2 = i;
        }
        if (i2 == 1) {
            edit.remove("reg_id").remove("backoff").remove("backoff_ceil").remove("last_refresh.");
            i2 = 2;
        }
        edit.putInt("ver", i2).apply();
    }

    private static void a(Context context, SharedPreferences sharedPreferences) {
        if (!sharedPreferences.getAll().isEmpty()) {
            Account[] accountsByType = AccountManager.get(context).getAccountsByType(b.a);
            if (accountsByType != null) {
                for (Account account : accountsByType) {
                    n a = new l(context, account.name, "c2dm").a();
                    String str = "last_refresh." + account.name;
                    if (sharedPreferences.contains(str)) {
                        a.a("last_refresh.", sharedPreferences.getLong(str, 0));
                    }
                    String str2 = "reg_enabled_for." + account.name;
                    if (sharedPreferences.contains(str2)) {
                        a.a("reg_enabled_for.", sharedPreferences.getInt(str2, 0));
                    }
                    a.apply();
                }
            }
        }
    }
}
