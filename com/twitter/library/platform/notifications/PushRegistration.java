package com.twitter.library.platform.notifications;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings.Secure;
import android.support.v7.recyclerview.BuildConfig;
import bdc;
import bmm;
import bmn;
import bmo;
import com.google.android.gcm.b;
import com.twitter.config.AppConfig;
import com.twitter.config.a;
import com.twitter.config.d;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.ck;
import com.twitter.library.service.x;
import com.twitter.util.m;
import defpackage.bbl;
import defpackage.bbn;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
public abstract class PushRegistration {
    public static final String a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final String f;
    private static final AtomicBoolean g;
    private static final AtomicBoolean h;
    private static final Handler i;
    private static boolean j;
    private static String k;
    private static boolean l;
    private static boolean m;

    /* compiled from: Twttr */
    public class DebugNotificationException extends Exception {
        private static final long serialVersionUID = 8167343949221178176L;

        public DebugNotificationException(String str) {
            super(str);
        }
    }

    static {
        a = a.a() + ".c2dm.add";
        b = a.a() + ".c2dm.update";
        c = a.a() + ".c2dm.update_by_server";
        d = a.a() + ".c2dm.del";
        e = a.a() + ".c2dm.registered";
        f = a.a() + ".c2dm.error";
        g = new AtomicBoolean(false);
        h = new AtomicBoolean(false);
        i = new Handler(Looper.getMainLooper());
        j = false;
        k = BuildConfig.VERSION_NAME;
    }

    public static String a(Context context) {
        return b.f(context.getApplicationContext());
    }

    public static String b(Context context) {
        String string = Secure.getString(context.getContentResolver(), "android_id");
        if (AppConfig.m().p()) {
            return string + "-" + a.a();
        }
        return string;
    }

    public static synchronized boolean c(Context context) {
        boolean z;
        synchronized (PushRegistration.class) {
            if (!l) {
                try {
                    b.a(context);
                    if (AppConfig.m().a()) {
                        b.b(context);
                    }
                    m = true;
                } catch (UnsupportedOperationException e) {
                    m = false;
                }
                l = true;
            }
            z = m;
        }
        return z;
    }

    public static int a(Context context, String str) {
        return ar.a(context).a(str);
    }

    public static void a(Context context, String str, String str2) {
        bbn.a(new ab(context, str, 2).a(new DeviceLimitException(str2)));
    }

    public static void a(Context context, String str, int i, boolean z) {
        Context applicationContext = context.getApplicationContext();
        w a = w.a(applicationContext, str);
        boolean a2 = a.a();
        a.a(i != 0);
        az.a(applicationContext).a(new bmo(applicationContext, bg.a().b(str), b(applicationContext), i, b.f(applicationContext)), new y(applicationContext, a2, z, str, i));
    }

    public static void b(Context context, String str) {
        if (h.compareAndSet(false, true)) {
            Context applicationContext = context.getApplicationContext();
            long a = 3600000 * d.a("android_push_settings_check_in_success_interval_hours", 24);
            AccountManager accountManager = AccountManager.get(applicationContext);
            bg a2 = bg.a();
            Set hashSet = new HashSet();
            Account[] accountsByType = accountManager.getAccountsByType(com.twitter.library.util.b.a);
            long b = m.b();
            for (Account account : accountsByType) {
                w a3 = w.a(applicationContext, account.name);
                if (!a3.a() || a3.b() + a >= b) {
                    hashSet.add(account.name);
                } else {
                    ((x) new bmm(applicationContext, a2.b(account.name), b(applicationContext), str).a(new z(hashSet, account, applicationContext))).P();
                }
            }
            if (hashSet.size() == accountsByType.length) {
                b.a(applicationContext, a);
                b.a(applicationContext, true);
            }
            h.set(false);
        }
    }

    public static boolean c(Context context, String str) {
        return !b.i(context) || (str != null && w.a(context, str).b() == 0);
    }

    public static boolean d(Context context, String str) {
        return b.g(context.getApplicationContext()) && w.a(context, str).a();
    }

    public static void d(Context context) {
        if (g.compareAndSet(false, true)) {
            if (!l) {
                bbn.a(new bbl(new IllegalStateException("Should call PushService#isEnabled before PushService#register")));
            } else if (!m) {
                bbn.a(new bbl(new IllegalStateException("Should not call PushService#register if PushService#isEnabled isn't true")));
            }
            b.a(context.getApplicationContext(), "49625052041");
        }
    }

    public static boolean e(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        if (b.g(applicationContext)) {
            w.a(context, str).a(true);
            return true;
        }
        d(applicationContext);
        return false;
    }

    public static void f(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        az.a(applicationContext).a(new bmn(applicationContext, bg.a().b(str), b(applicationContext)));
    }

    public static void e(Context context) {
        b.c(context.getApplicationContext());
    }

    public static void g(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        AccountManager accountManager = AccountManager.get(applicationContext);
        bg a = bg.a();
        Set hashSet = new HashSet();
        Account[] accountsByType = accountManager.getAccountsByType(com.twitter.library.util.b.a);
        for (Account account : accountsByType) {
            if (w.a(applicationContext, account.name).a()) {
                ((x) new bmm(applicationContext, a.b(account.name), b(applicationContext), str).a(new aa(hashSet, account, applicationContext))).P();
            } else {
                hashSet.add(account.name);
            }
        }
        if (accountsByType.length == hashSet.size()) {
            b.a(context, d.a("android_push_settings_check_in_success_interval_hours", 24) * 3600000);
            b.a(context, true);
        }
        g.set(false);
        context.sendOrderedBroadcast(new Intent(e), ck.a);
        if (j && hashSet.contains(k)) {
            i.post(new ac(applicationContext, bdc.preference_notification_success));
            a();
        }
    }

    public static void h(Context context, String str) {
        g.set(false);
        context.sendOrderedBroadcast(new Intent(f), ck.a);
        if (b()) {
            i.post(new ac(context.getApplicationContext(), bdc.preference_notification_error));
            a();
        }
        bbn.a(new ab().a("Error id", str).a(new DebugNotificationException("onError in PushService")));
    }

    public static void a(String str) {
        j = true;
        k = str;
    }

    public static void a() {
        j = false;
        k = BuildConfig.VERSION_NAME;
    }

    public static boolean b() {
        return j;
    }

    private static void b(Context context, String str, int i, boolean z, String str2, int i2, int i3) {
        context.sendOrderedBroadcast(new Intent(str).putExtra("push_return_code", i).putExtra("show_toast_message", z).putExtra("account", str2).putExtra("requested_push_flags", i2).putExtra("applied_push_flags", i3), ck.a);
    }
}
