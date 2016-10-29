package com.twitter.android.client;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.twitter.android.lf;
import com.twitter.android.util.aq;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.platform.PlatformContext;
import defpackage.bbu;

/* compiled from: Twttr */
public class bm {
    private static bm a;
    private final Context b;
    private final boolean c;
    private final long d;
    private bn e;
    private long f;
    private PendingIntent g;
    private String h;

    private bm(Context context) {
        boolean z = true;
        this.b = context.getApplicationContext();
        if (!(lf.a().a(context, "android.permission.READ_SMS") && d.a("sms_delivery_should_scribe_phone_number"))) {
            z = false;
        }
        this.c = z;
        this.d = d.a("sms_delivery_auto_process_timeout", 300) * 1000;
    }

    public static bm a(Context context) {
        if (a == null) {
            a = new bm(context);
        }
        return a;
    }

    public void a(String str) {
        this.f = PlatformContext.f().a().b();
        this.h = str;
        this.g = PendingIntent.getBroadcast(this.b, 0, new Intent(this.b, SmsReceiver.class).putExtra("isTimeOut", true), 268435456);
        ((AlarmManager) this.b.getSystemService(NotificationCompatApi21.CATEGORY_ALARM)).set(3, this.f + this.d, this.g);
        d("start");
    }

    public void a() {
        c("manual_entry");
    }

    public void a(bn bnVar) {
        if (aq.a(this.b).e()) {
            this.e = bnVar;
        }
    }

    public void b() {
        this.e = null;
    }

    public boolean c() {
        return this.f > 0;
    }

    public void b(String str) {
        if (this.f != 0) {
            c("received");
        }
        if (this.e != null) {
            this.e.a(str);
        }
    }

    public void d() {
        if (this.f != 0) {
            d("timeout");
            this.f = 0;
        }
    }

    private void c(String str) {
        ((AlarmManager) this.b.getSystemService(NotificationCompatApi21.CATEGORY_ALARM)).cancel(this.g);
        d(str);
        this.f = 0;
    }

    private void d(String str) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b("app", "sms_receiver", "verification_code", this.h, str)).c((PlatformContext.f().a().b() - this.f) / 1000)).a(this.b, this.c));
    }
}
