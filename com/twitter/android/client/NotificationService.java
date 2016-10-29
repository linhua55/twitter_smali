package com.twitter.android.client;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.NotificationCompat.Builder;
import android.widget.RemoteViews;
import com.twitter.android.client.notifications.StatusBarNotif;
import com.twitter.android.client.notifications.StoriesNotif;
import com.twitter.android.mx;
import com.twitter.app.common.util.f;
import com.twitter.config.a;
import com.twitter.config.c;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.api.timeline.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.provider.cy;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.collection.r;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bnq;
import defpackage.boh;
import defpackage.bov;
import defpackage.zq;
import java.util.Map;
import tv.periscope.android.library.k;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class NotificationService extends Service {
    public static final String a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final String f;
    public static final String g;
    public static final String h;
    public static final String i;
    public static final String j;
    private static final Map<String, Integer> k;
    private am l;

    static {
        a = a.a() + ".notif.dismiss";
        b = a.a() + ".notif.undo";
        c = a.a() + ".notif.reply";
        d = a.a() + ".notif.retweet";
        e = a.a() + ".notif.favorite";
        f = a.a() + ".notif.follow";
        g = a.a() + ".notif.follow.accept";
        h = a.a() + ".notif.follow.decline";
        i = a.a() + ".notif.tweetTo";
        j = a.a() + ".notif.open";
        k = (Map) r.d().b(a, Integer.valueOf(0)).b(b, Integer.valueOf(1)).b(c, Integer.valueOf(2)).b(d, Integer.valueOf(2)).b(e, Integer.valueOf(2)).b(f, Integer.valueOf(2)).b(g, Integer.valueOf(2)).b(h, Integer.valueOf(2)).b(i, Integer.valueOf(2)).b(j, Integer.valueOf(3)).q();
    }

    public void onCreate() {
        super.onCreate();
        this.l = new am(getMainLooper());
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        int i3 = 1;
        if (intent == null) {
            bbn.a(new NullPointerException("Intent is null"));
            stopSelf(i2);
            return 2;
        }
        Integer num = (Integer) k.get(intent.getAction());
        if (num == null) {
            bbn.a(new IllegalStateException("IMAGE-818: " + intent.toUri(0)));
            stopSelf(i2);
            return 2;
        }
        Context applicationContext = getApplicationContext();
        Bundle extras = intent.getExtras();
        z a = z.a(applicationContext);
        try {
            StatusBarNotif statusBarNotif = (StatusBarNotif) extras.getParcelable("sb_notification");
            bbw bbw;
            switch (num.intValue()) {
                case mx.View_android_theme /*0*/:
                    if (statusBarNotif != null) {
                        a(applicationContext, extras);
                        if (statusBarNotif instanceof StoriesNotif) {
                            a.b(statusBarNotif.v());
                            break;
                        }
                    }
                    break;
                case WireMessage.WIRE_CHAT /*1*/:
                    if (statusBarNotif != null) {
                        int w = statusBarNotif.w();
                        if (this.l.hasMessages(w)) {
                            this.l.removeMessages(w);
                            bbw = (TwitterScribeLog) extras.getParcelable("notif_scribe_log");
                            if (bbw != null) {
                                bbw.b(bbw.a() + "_undo");
                                bbu.a(bbw);
                            }
                            a.b(statusBarNotif);
                            break;
                        }
                    }
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (statusBarNotif != null) {
                        bbw = (TwitterScribeLog) extras.getParcelable("notif_scribe_log");
                        boolean z = extras.getBoolean("notif_scribe_action_tap");
                        if (bbw != null && z) {
                            String a2 = bbw.a();
                            bbw.b(a2 + "_tap");
                            bbu.a(bbw);
                            bbw.b(a2);
                        }
                        PendingIntent pendingIntent = (PendingIntent) extras.getParcelable("action_intent");
                        String action = intent.getAction();
                        if (pendingIntent == null) {
                            i3 = 0;
                        }
                        boolean z2 = extras.getBoolean("undo_allowed", false);
                        if (i3 == 0) {
                            if (!z2) {
                                a(applicationContext, extras);
                                a(applicationContext, extras, action);
                                break;
                            }
                            a(applicationContext, statusBarNotif, extras.getString("undo_text"), extras.getInt("undo_icon", 0), bbw);
                            this.l.sendMessageDelayed(this.l.obtainMessage(statusBarNotif.w(), new al(this, i2, applicationContext, extras, action)), 5000);
                            return 3;
                        }
                        a(pendingIntent);
                        break;
                    }
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    if (statusBarNotif != null) {
                        a(applicationContext, extras);
                        PendingIntent pendingIntent2 = (PendingIntent) extras.getParcelable("action_intent");
                        if (pendingIntent2 != null) {
                            a(pendingIntent2);
                            break;
                        }
                    }
                    break;
            }
            stopSelf(i2);
            return 2;
        } catch (Exception e) {
            stopSelf(i2);
            return 2;
        }
    }

    private void a(PendingIntent pendingIntent) {
        try {
            pendingIntent.send();
            sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        } catch (Throwable e) {
            bbn.a(e);
        }
    }

    private void a(Context context, Bundle bundle, String str) {
        Session b = bg.a().b(bundle.getString("sb_account_name"));
        AsyncOperation asyncOperation = null;
        if (e.equals(str)) {
            asyncOperation = new d(context, b, bundle.getLong("status_id"), bundle.getLong("rt_status_id"));
        } else if (f.equals(str)) {
            asyncOperation = new boh(context, b, bundle.getLong("user_id"), null);
        } else if (d.equals(str)) {
            asyncOperation = new bnq(context, b, bundle.getLong("status_id"), bundle.getLong("ref_status_id"), null);
        } else if (g.equals(str) || h.equals(str)) {
            asyncOperation = new bov(context, b, bundle.getLong("user_id"), g.equals(str) ? 1 : 2);
        }
        if (asyncOperation != null) {
            asyncOperation.l("Notification actions are triggered by user actions. The app may or may not be visible.");
            az.a(context).a(asyncOperation);
        }
    }

    private static void a(Context context, StatusBarNotif statusBarNotif, String str, int i, TwitterScribeLog twitterScribeLog) {
        int w = statusBarNotif.w();
        PendingIntent service = PendingIntent.getService(context, 0, new Intent(context, NotificationService.class).setAction(b).setData(Uri.withAppendedPath(cy.a, String.valueOf(w))).putExtra("sb_notification", statusBarNotif).putExtra("notif_scribe_log", twitterScribeLog), 268435456);
        RemoteViews remoteViews = new RemoteViews(a.a(), 2130969148);
        remoteViews.setOnClickPendingIntent(2131952963, service);
        remoteViews.setTextViewText(k.text, str);
        remoteViews.setImageViewResource(k.icon, i);
        ((NotificationManager) context.getSystemService("notification")).notify(w, new Builder(context).setPriority(statusBarNotif.D()).setWhen(statusBarNotif.x()).setSmallIcon(i).setContent(remoteViews).build());
    }

    public static void a(Context context, Bundle bundle) {
        String str;
        String string = bundle.getString("sb_account_name");
        StatusBarNotif statusBarNotif = (StatusBarNotif) bundle.getParcelable("sb_notification");
        c.a("android_push_notification_disaggregation_2520", "one", "one_five", "two", "two_five", "three");
        if (f.a().c()) {
            str = "notif_scribe_log";
        } else {
            str = "notif_scribe_log_from_background";
        }
        bbw bbw = (TwitterScribeLog) bundle.getParcelable(str);
        if (bbw != null) {
            bbu.a(bbw);
        }
        if (zq.a()) {
            bbw = (TwitterScribeLog) bundle.getParcelable("notif_scribe_log_for_preview_experiment");
            if (bbw != null) {
                bbu.a(bbw);
            }
        }
        z.a(context).a(statusBarNotif.N(), string);
    }
}
