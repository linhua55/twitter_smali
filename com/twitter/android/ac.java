package com.twitter.android;

import android.accounts.Account;
import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.twitter.library.service.AuthTokenService;
import com.twitter.library.service.g;

/* compiled from: Twttr */
class ac implements ServiceConnection {
    private final String a;
    private final String b;
    private final ad c;
    private final Account d;
    private AuthTokenService e;

    ac(String str, String str2, ad adVar, Account account) {
        this.a = str;
        this.b = str2;
        this.c = adVar;
        this.d = account;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.e = ((g) iBinder).a();
        this.e.a(this.c, this.a, this.b, this.d.name);
    }

    public void onServiceDisconnected(ComponentName componentName) {
        this.e = null;
    }
}
