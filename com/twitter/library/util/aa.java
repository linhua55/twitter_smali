package com.twitter.library.util;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: Twttr */
public class aa implements ad {
    private static aa a;
    private final Context b;
    private SharedPreferences c;
    private Boolean d;
    private Boolean e;

    private aa(Context context) {
        this.b = context.getApplicationContext();
    }

    public static synchronized aa a(Context context) {
        aa aaVar;
        synchronized (aa.class) {
            if (a == null) {
                a = new aa(context);
                a.e();
            }
            aaVar = a;
        }
        return aaVar;
    }

    private SharedPreferences d() {
        if (this.c == null) {
            this.c = this.b.getSharedPreferences("logged_out_settings", 0);
        }
        return this.c;
    }

    private void e() {
        a(d().getBoolean("email_disco", true));
        b(d().getBoolean("phone_disco", true));
    }

    public void a(boolean z) {
        this.d = Boolean.valueOf(z);
    }

    public void b(boolean z) {
        this.e = Boolean.valueOf(z);
    }

    public boolean a() {
        return this.d.booleanValue();
    }

    public boolean b() {
        return this.e.booleanValue();
    }

    public void c() {
        d().edit().putBoolean("email_disco", this.d.booleanValue()).putBoolean("phone_disco", this.e.booleanValue()).apply();
    }
}
