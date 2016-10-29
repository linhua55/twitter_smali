package com.twitter.android.loggedoutpush;

import android.app.IntentService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.TrafficStats;
import android.os.Process;
import android.preference.PreferenceManager;
import com.twitter.android.mx;
import com.twitter.library.client.bg;
import com.twitter.util.aj;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class LoggedoutPushService extends IntentService {
    private c a;
    private long b;
    private int c;

    public LoggedoutPushService() {
        super("LoggedoutPushService");
    }

    public void onCreate() {
        super.onCreate();
        this.a = new c(new e(PreferenceManager.getDefaultSharedPreferences(this)), new h(this), new b(this));
        this.c = Process.myUid();
        this.b = TrafficStats.getUidRxBytes(this.c) + TrafficStats.getUidTxBytes(this.c);
    }

    protected void onHandleIntent(Intent intent) {
        if (intent != null && !aj.a(intent.getAction()) && this.a.b()) {
            String action = intent.getAction();
            Object obj = -1;
            switch (action.hashCode()) {
                case -1338078279:
                    if (action.equals("unregister_device")) {
                        obj = 1;
                        break;
                    }
                    break;
                case -1007918260:
                    if (action.equals("register_or_update_device")) {
                        obj = null;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case mx.View_android_theme /*0*/:
                    if (bg.a().c().d()) {
                        c(this);
                    } else if (this.a.a()) {
                        this.a.c();
                    }
                case WireMessage.WIRE_CHAT /*1*/:
                    this.a.e();
                default:
            }
        }
    }

    public void onDestroy() {
        super.onDestroy();
        this.a.a((TrafficStats.getUidRxBytes(this.c) + TrafficStats.getUidTxBytes(this.c)) - this.b);
    }

    public static void a(Context context) {
        Intent intent = new Intent(context, LoggedoutPushService.class);
        intent.setAction("register_or_update_device");
        context.startService(intent);
    }

    public static void b(Context context) {
        Intent intent = new Intent(context, LoggedoutPushService.class);
        intent.setAction("unregister_device");
        context.startService(intent);
    }

    public static void c(Context context) {
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, LoggedoutSystemReceiver.class), 2, 1);
    }

    public static void d(Context context) {
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, LoggedoutSystemReceiver.class), 0, 1);
    }
}
