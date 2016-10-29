package com.google.android.gcm;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import com.google.android.gms.gcm.c;
import defpackage.cfb;
import java.io.IOException;
import java.util.Random;

/* compiled from: Twttr */
public abstract class GCMBaseIntentService extends IntentService {
    private static final Object a;
    private static final Random b;
    private static final String c;
    private static int d;
    private static WakeLock e;
    private final String[] f;

    protected abstract void a(Context context, Bundle bundle);

    protected abstract void a(Context context, String str);

    protected abstract void b(Context context, String str);

    static {
        a = GCMBaseIntentService.class;
        b = new Random();
        c = Long.toBinaryString(b.nextLong());
        d = 0;
    }

    protected GCMBaseIntentService() {
        this(a("DynamicSenderIds"), null);
    }

    protected GCMBaseIntentService(String... strArr) {
        this(a(strArr), strArr);
    }

    private GCMBaseIntentService(String str, String[] strArr) {
        super(str);
        this.f = strArr;
    }

    private static String a(String str) {
        StringBuilder append = new StringBuilder().append("GCMIntentService-").append(str).append("-");
        int i = d + 1;
        d = i;
        String stringBuilder = append.append(i).toString();
        cfb.a("GCMBaseIntentService", "Intent service name: " + stringBuilder);
        return stringBuilder;
    }

    private static String a(String[] strArr) {
        return a(b.a(strArr));
    }

    protected String[] a() {
        if (this.f != null) {
            return this.f;
        }
        throw new IllegalStateException("sender id not set on constructor");
    }

    protected void a(Context context, Intent intent) {
    }

    protected void c(Context context, String str) {
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onHandleIntent(android.content.Intent r6) {
        /*
        r5 = this;
        if (r6 == 0) goto L_0x0008;
    L_0x0002:
        r0 = r6.getAction();
        if (r0 != 0) goto L_0x0010;
    L_0x0008:
        r0 = r5.getApplicationContext();
        r5.a(r0, r6);
    L_0x000f:
        return;
    L_0x0010:
        r1 = r5.getApplicationContext();	 Catch:{ all -> 0x0065 }
        r2 = r6.getAction();	 Catch:{ all -> 0x0065 }
        r0 = -1;
        r3 = r2.hashCode();	 Catch:{ all -> 0x0065 }
        switch(r3) {
            case -520604742: goto L_0x0053;
            case 366519424: goto L_0x0048;
            case 1736128796: goto L_0x003d;
            default: goto L_0x0020;
        };
    L_0x0020:
        switch(r0) {
            case 0: goto L_0x005e;
            case 1: goto L_0x007d;
            case 2: goto L_0x00cc;
            default: goto L_0x0023;
        };
    L_0x0023:
        r1 = a;
        monitor-enter(r1);
        r0 = e;	 Catch:{ all -> 0x003a }
        if (r0 == 0) goto L_0x012e;
    L_0x002a:
        r0 = "GCMBaseIntentService";
        r2 = "Releasing wakelock";
        defpackage.cfb.a(r0, r2);	 Catch:{ all -> 0x003a }
        r0 = e;	 Catch:{ all -> 0x003a }
        r0.release();	 Catch:{ all -> 0x003a }
    L_0x0038:
        monitor-exit(r1);	 Catch:{ all -> 0x003a }
        goto L_0x000f;
    L_0x003a:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x003a }
        throw r0;
    L_0x003d:
        r3 = "com.google.android.c2dm.intent.REGISTRATION";
        r2 = r2.equals(r3);	 Catch:{ all -> 0x0065 }
        if (r2 == 0) goto L_0x0020;
    L_0x0046:
        r0 = 0;
        goto L_0x0020;
    L_0x0048:
        r3 = "com.google.android.c2dm.intent.RECEIVE";
        r2 = r2.equals(r3);	 Catch:{ all -> 0x0065 }
        if (r2 == 0) goto L_0x0020;
    L_0x0051:
        r0 = 1;
        goto L_0x0020;
    L_0x0053:
        r3 = "com.google.android.gcm.intent.RETRY";
        r2 = r2.equals(r3);	 Catch:{ all -> 0x0065 }
        if (r2 == 0) goto L_0x0020;
    L_0x005c:
        r0 = 2;
        goto L_0x0020;
    L_0x005e:
        com.google.android.gcm.b.e(r1);	 Catch:{ all -> 0x0065 }
        r5.b(r1, r6);	 Catch:{ all -> 0x0065 }
        goto L_0x0023;
    L_0x0065:
        r0 = move-exception;
        r1 = a;
        monitor-enter(r1);
        r2 = e;	 Catch:{ all -> 0x0144 }
        if (r2 == 0) goto L_0x0139;
    L_0x006d:
        r2 = "GCMBaseIntentService";
        r3 = "Releasing wakelock";
        defpackage.cfb.a(r2, r3);	 Catch:{ all -> 0x0144 }
        r2 = e;	 Catch:{ all -> 0x0144 }
        r2.release();	 Catch:{ all -> 0x0144 }
    L_0x007b:
        monitor-exit(r1);	 Catch:{ all -> 0x0144 }
        throw r0;
    L_0x007d:
        r0 = r6.getExtras();	 Catch:{ all -> 0x0065 }
        if (r0 != 0) goto L_0x00a8;
    L_0x0083:
        r1 = a;
        monitor-enter(r1);
        r0 = e;	 Catch:{ all -> 0x009b }
        if (r0 == 0) goto L_0x009e;
    L_0x008a:
        r0 = "GCMBaseIntentService";
        r2 = "Releasing wakelock";
        defpackage.cfb.a(r0, r2);	 Catch:{ all -> 0x009b }
        r0 = e;	 Catch:{ all -> 0x009b }
        r0.release();	 Catch:{ all -> 0x009b }
    L_0x0098:
        monitor-exit(r1);	 Catch:{ all -> 0x009b }
        goto L_0x000f;
    L_0x009b:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x009b }
        throw r0;
    L_0x009e:
        r0 = "GCMBaseIntentService";
        r2 = "Wakelock reference is null";
        defpackage.cfb.e(r0, r2);	 Catch:{ all -> 0x009b }
        goto L_0x0098;
    L_0x00a8:
        r2 = new com.twitter.library.platform.notifications.f;	 Catch:{ all -> 0x0065 }
        r2.<init>(r0);	 Catch:{ all -> 0x0065 }
        r3 = "deleted_messages";
        r4 = r2.c();	 Catch:{ all -> 0x0065 }
        r3 = r3.equals(r4);	 Catch:{ all -> 0x0065 }
        if (r3 == 0) goto L_0x00c7;
    L_0x00ba:
        r0 = r2.d();	 Catch:{ all -> 0x0065 }
        r1 = r2.b();	 Catch:{ all -> 0x0065 }
        com.google.android.gcm.GCMScribeReporter.a(r0, r1);	 Catch:{ all -> 0x0065 }
        goto L_0x0023;
    L_0x00c7:
        r5.a(r1, r0);	 Catch:{ all -> 0x0065 }
        goto L_0x0023;
    L_0x00cc:
        r0 = "token";
        r0 = r6.getStringExtra(r0);	 Catch:{ all -> 0x0065 }
        r2 = c;	 Catch:{ all -> 0x0065 }
        r2 = r2.equals(r0);	 Catch:{ all -> 0x0065 }
        if (r2 != 0) goto L_0x011a;
    L_0x00db:
        r1 = "GCMBaseIntentService";
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0065 }
        r2.<init>();	 Catch:{ all -> 0x0065 }
        r3 = "Received invalid token: ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0065 }
        r0 = r2.append(r0);	 Catch:{ all -> 0x0065 }
        r0 = r0.toString();	 Catch:{ all -> 0x0065 }
        defpackage.cfb.e(r1, r0);	 Catch:{ all -> 0x0065 }
        r1 = a;
        monitor-enter(r1);
        r0 = e;	 Catch:{ all -> 0x010d }
        if (r0 == 0) goto L_0x0110;
    L_0x00fc:
        r0 = "GCMBaseIntentService";
        r2 = "Releasing wakelock";
        defpackage.cfb.a(r0, r2);	 Catch:{ all -> 0x010d }
        r0 = e;	 Catch:{ all -> 0x010d }
        r0.release();	 Catch:{ all -> 0x010d }
    L_0x010a:
        monitor-exit(r1);	 Catch:{ all -> 0x010d }
        goto L_0x000f;
    L_0x010d:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x010d }
        throw r0;
    L_0x0110:
        r0 = "GCMBaseIntentService";
        r2 = "Wakelock reference is null";
        defpackage.cfb.e(r0, r2);	 Catch:{ all -> 0x010d }
        goto L_0x010a;
    L_0x011a:
        r0 = com.google.android.gcm.b.g(r1);	 Catch:{ all -> 0x0065 }
        if (r0 == 0) goto L_0x0125;
    L_0x0120:
        com.google.android.gcm.b.d(r1);	 Catch:{ all -> 0x0065 }
        goto L_0x0023;
    L_0x0125:
        r0 = r5.a();	 Catch:{ all -> 0x0065 }
        com.google.android.gcm.b.b(r1, r0);	 Catch:{ all -> 0x0065 }
        goto L_0x0023;
    L_0x012e:
        r0 = "GCMBaseIntentService";
        r2 = "Wakelock reference is null";
        defpackage.cfb.e(r0, r2);	 Catch:{ all -> 0x003a }
        goto L_0x0038;
    L_0x0139:
        r2 = "GCMBaseIntentService";
        r3 = "Wakelock reference is null";
        defpackage.cfb.e(r2, r3);	 Catch:{ all -> 0x0144 }
        goto L_0x007b;
    L_0x0144:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0144 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gcm.GCMBaseIntentService.onHandleIntent(android.content.Intent):void");
    }

    static void a(Context context, Intent intent, String str) {
        synchronized (a) {
            if (e == null) {
                e = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "GCM_LIB");
            }
        }
        cfb.a("GCMBaseIntentService", "Acquiring wakelock");
        e.acquire();
        intent.setClassName(context, str);
        context.startService(intent);
    }

    private void b(Context context, Intent intent) {
        String a;
        String str = null;
        String stringExtra = intent.getStringExtra("unregistered");
        try {
            c a2 = c.a(context);
            if (stringExtra == null) {
                a = a2.a(this.f);
            } else {
                a2.a();
                a = null;
            }
        } catch (IOException e) {
            a = null;
            str = "SERVICE_NOT_AVAILABLE";
        }
        cfb.b("GCMBaseIntentService", "handleRegistration: registrationId = " + a + ", error = " + str + ", unregistered = " + stringExtra);
        if (a != null) {
            b.k(context);
            b.a(context, a);
            b(context, a);
        } else if (stringExtra != null) {
            b.k(context);
            c(context, b.h(context));
        } else {
            cfb.b("GCMBaseIntentService", "Registration error: " + str);
            if ("SERVICE_NOT_AVAILABLE".equals(str)) {
                int l = b.l(context);
                int nextInt = b.nextInt(l) + (l / 2);
                cfb.b("GCMBaseIntentService", "Scheduling registration retry, backoff = " + nextInt + " (" + l + ")");
                Intent intent2 = new Intent("com.google.android.gcm.intent.RETRY");
                intent2.setClass(context, a.a);
                intent2.putExtra("unregistered", stringExtra);
                intent2.putExtra("token", c);
                ((AlarmManager) context.getSystemService(NotificationCompatApi21.CATEGORY_ALARM)).set(3, SystemClock.elapsedRealtime() + ((long) nextInt), PendingIntent.getBroadcast(context, 0, intent2, 0));
                if (l < 3600000) {
                    b.a(context, l * 2);
                    return;
                }
                return;
            }
            a(context, str);
        }
    }
}
