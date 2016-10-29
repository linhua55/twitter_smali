package com.twitter.library.platform;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.IntentService;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SyncResult;
import android.os.Bundle;
import android.os.IBinder;
import android.preference.PreferenceManager;
import com.twitter.config.a;
import com.twitter.library.client.Session;
import com.twitter.library.client.l;
import com.twitter.library.client.n;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.ck;
import com.twitter.library.util.b;
import com.twitter.util.m;
import java.util.HashMap;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TwitterDataSyncService extends IntentService {
    public static final String a;
    private static final HashMap<String, Integer> b;
    private static final Object c;
    private static a d;
    private static boolean e;

    static {
        a = a.a() + ".poll.data";
        b = new HashMap(3);
        c = new Object();
        d = null;
        b.put("sync_account", Integer.valueOf(1));
        b.put("on_poll_alarm_ev", Integer.valueOf(2));
        b.put("update_alarm", Integer.valueOf(3));
    }

    public TwitterDataSyncService() {
        super("SyncService");
    }

    public void onCreate() {
        super.onCreate();
        synchronized (c) {
            if (d == null) {
                d = new a(getApplicationContext());
            }
        }
    }

    public IBinder onBind(Intent intent) {
        return d.getSyncAdapterBinder();
    }

    protected void onHandleIntent(Intent intent) {
        if (intent != null) {
            Integer num = (Integer) b.get(intent.getAction());
            if (num != null) {
                switch (num.intValue()) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        new a(this).a((Account) intent.getParcelableExtra("account"), intent.getBundleExtra("_data"), new SyncResult());
                    case WireMessage.WIRE_CONTROL /*2*/:
                        if (ContentResolver.getMasterSyncAutomatically()) {
                            a aVar = new a(this);
                            Bundle bundle = new Bundle();
                            bundle.putBoolean("show_notif", true);
                            bundle.putBoolean("fs_config", true);
                            bundle.putBoolean("live_addressbook_sync", true);
                            if (PushRegistration.c(this)) {
                                bundle.putBoolean("messages", false);
                            }
                            for (Account account : AccountManager.get(this).getAccountsByType(b.a)) {
                                if (aVar.a(account)) {
                                    c(this);
                                    ContentResolver.requestSync(account, ck.c, bundle);
                                }
                            }
                        }
                        a.a((Context) this);
                    case WireMessage.WIRE_AUTH /*3*/:
                        a.a((Context) this);
                    default:
                }
            }
        }
    }

    public static boolean a(Context context, Bundle bundle, boolean z, Account account) {
        if (ContentResolver.getMasterSyncAutomatically() && ContentResolver.getSyncAutomatically(account, ck.c) && ContentResolver.getIsSyncable(account, ck.c) > 0) {
            c(context);
            ContentResolver.requestSync(account, ck.c, bundle);
            return true;
        } else if (!z) {
            return false;
        } else {
            c(context);
            context.startService(new Intent(context, TwitterDataSyncService.class).setAction("sync_account").putExtra("account", account).putExtra("_data", bundle));
            return true;
        }
    }

    public static void a(Context context) {
        context.startService(new Intent(context, TwitterDataSyncService.class).setAction("update_alarm"));
    }

    public static boolean a(Context context, String str) {
        return c(context, str) < h(context, str);
    }

    static void b(Context context, String str) {
        b(context, str, "last_activity_sync");
    }

    public static long c(Context context, String str) {
        return a(context, str, "last_activity_sync");
    }

    static void d(Context context, String str) {
        b(context, str, "last_activity_push");
    }

    private static long h(Context context, String str) {
        return a(context, str, "last_activity_push");
    }

    private static long a(Context context, String str, String str2) {
        return new l(context, str, "activity_times").getLong(str2, 0);
    }

    private static void b(Context context, String str, String str2) {
        n a = new l(context, str, "activity_times").a();
        a.a(str2, m.b());
        a.apply();
    }

    public static boolean b(Context context) {
        return !e && d(context) + 60000 < m.b();
    }

    private static void c(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putLong("last_sync", m.b()).apply();
    }

    private static long d(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getLong("last_sync", 0);
    }

    public static void a(Context context, Bundle bundle, Session session) {
        if (b(context)) {
            com.twitter.app.common.account.a b = b.b(session.e());
            if (b != null) {
                a(context, bundle, false, b.a());
            }
        }
    }

    public static void e(Context context, String str) {
        if (str != null) {
            new l(context, str, "instant_timeline_prefs").a().a("instant_timeline_prevent_home_sync", true).apply();
        }
    }

    public static void f(Context context, String str) {
        if (str != null) {
            new l(context, str, "instant_timeline_prefs").a().a("instant_timeline_prevent_home_sync").apply();
        }
    }

    public static boolean g(Context context, String str) {
        return str != null && new l(context, str, "instant_timeline_prefs").getBoolean("instant_timeline_prevent_home_sync", false);
    }
}
