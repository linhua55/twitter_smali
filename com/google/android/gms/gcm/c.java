package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.support.annotation.RequiresPermission;
import android.support.v7.recyclerview.BuildConfig;
import com.google.android.gms.iid.a;
import com.google.android.gms.iid.j;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class c {
    public static int a;
    public static int b;
    public static int c;
    static c d;
    private static final AtomicInteger i;
    final Messenger e;
    private Context f;
    private PendingIntent g;
    private Map<String, Handler> h;
    private final BlockingQueue<Intent> j;

    static {
        a = 5000000;
        b = 6500000;
        c = 7000000;
        i = new AtomicInteger(1);
    }

    public c() {
        this.j = new LinkedBlockingQueue();
        this.h = Collections.synchronizedMap(new HashMap());
        this.e = new Messenger(new d(this, Looper.getMainLooper()));
    }

    public static synchronized c a(Context context) {
        c cVar;
        synchronized (c.class) {
            if (d == null) {
                d = new c();
                d.f = context.getApplicationContext();
            }
            cVar = d;
        }
        return cVar;
    }

    static String a(Intent intent, String str) throws IOException {
        if (intent == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String stringExtra = intent.getStringExtra(str);
        if (stringExtra != null) {
            return stringExtra;
        }
        stringExtra = intent.getStringExtra("error");
        if (stringExtra != null) {
            throw new IOException(stringExtra);
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    private String a(String str) {
        int indexOf = str.indexOf(64);
        if (indexOf > 0) {
            str = str.substring(0, indexOf);
        }
        return a.b(this.f).d().a(BuildConfig.VERSION_NAME, str, "GCM");
    }

    private void a(String str, String str2, long j, int i, Bundle bundle) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("Missing 'to'");
        }
        Intent intent = new Intent("com.google.android.gcm.intent.SEND");
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        a(intent);
        intent.setPackage(b(this.f));
        intent.putExtra("google.to", str);
        intent.putExtra("google.message_id", str2);
        intent.putExtra("google.ttl", Long.toString(j));
        intent.putExtra("google.delay", Integer.toString(i));
        intent.putExtra("google.from", a(str));
        if (b(this.f).contains(".gsf")) {
            Bundle bundle2 = new Bundle();
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    bundle2.putString("gcm." + str3, (String) obj);
                }
            }
            bundle2.putString("google.to", str);
            bundle2.putString("google.message_id", str2);
            a.b(this.f).c("GCM", "upstream", bundle2);
            return;
        }
        this.f.sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
    }

    private String b() {
        return "google.rpc" + String.valueOf(i.getAndIncrement());
    }

    public static String b(Context context) {
        return j.a(context);
    }

    private boolean b(Intent intent) {
        Object stringExtra = intent.getStringExtra("In-Reply-To");
        if (stringExtra == null && intent.hasExtra("error")) {
            stringExtra = intent.getStringExtra("google.message_id");
        }
        if (stringExtra != null) {
            Handler handler = (Handler) this.h.remove(stringExtra);
            if (handler != null) {
                Message obtain = Message.obtain();
                obtain.obj = intent;
                return handler.sendMessage(obtain);
            }
        }
        return false;
    }

    public static int c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(b(context), 0).versionCode;
        } catch (NameNotFoundException e) {
            return -1;
        }
    }

    @Deprecated
    Intent a(Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        } else if (c(this.f) < 0) {
            throw new IOException("Google Play Services missing");
        } else {
            if (bundle == null) {
                bundle = new Bundle();
            }
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage(b(this.f));
            a(intent);
            intent.putExtra("google.message_id", b());
            intent.putExtras(bundle);
            intent.putExtra("google.messenger", this.e);
            this.f.startService(intent);
            try {
                return (Intent) this.j.poll(30000, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                throw new IOException(e.getMessage());
            }
        }
    }

    @Deprecated
    @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
    public synchronized String a(String... strArr) throws IOException {
        String b;
        b = b(strArr);
        Bundle bundle = new Bundle();
        if (b(this.f).contains(".gsf")) {
            bundle.putString("legacy.sender", b);
            b = a.b(this.f).b(b, "GCM", bundle);
        } else {
            bundle.putString("sender", b);
            b = a(a(bundle), "registration_id");
        }
        return b;
    }

    @Deprecated
    @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
    public synchronized void a() throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        a.b(this.f).b();
    }

    synchronized void a(Intent intent) {
        if (this.g == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            this.g = PendingIntent.getBroadcast(this.f, 0, intent2, 0);
        }
        intent.putExtra("app", this.g);
    }

    @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
    public void a(String str, String str2, long j, Bundle bundle) throws IOException {
        a(str, str2, j, -1, bundle);
    }

    String b(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("No senderIds");
        }
        StringBuilder stringBuilder = new StringBuilder(strArr[0]);
        for (int i = 1; i < strArr.length; i++) {
            stringBuilder.append(',').append(strArr[i]);
        }
        return stringBuilder.toString();
    }
}
