package com.twitter.media.service.core;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Messenger;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class MediaServiceClient {
    private static MediaServiceClient a;
    private final Context b;
    private final Map<Integer, g> c;
    private final e d;
    private final HandlerThread e;
    private Messenger f;
    private Handler g;

    /* compiled from: Twttr */
    class NativeCrashException extends Exception {
        NativeCrashException(String str) {
            super(str);
        }
    }

    public static synchronized MediaServiceClient a(Context context) {
        MediaServiceClient mediaServiceClient;
        synchronized (MediaServiceClient.class) {
            if (a == null) {
                a = new MediaServiceClient(context.getApplicationContext());
            }
            mediaServiceClient = a;
        }
        return mediaServiceClient;
    }

    private MediaServiceClient(Context context) {
        this.c = new HashMap();
        this.d = new e();
        this.b = context;
        this.e = new HandlerThread("MediaServiceHandler", 10);
        this.e.start();
        this.d.a();
    }

    private void a() {
        a(2, null, new c(this));
    }

    private synchronized Handler b() {
        if (this.g == null) {
            this.g = new f(this.e.getLooper(), this.c);
        }
        return this.g;
    }

    private synchronized Messenger c() {
        if (this.f == null) {
            this.f = new Messenger(b());
        }
        return this.f;
    }

    private static void b(g gVar, Bundle bundle) {
        synchronized (gVar) {
            gVar.g = bundle;
            gVar.f = true;
            gVar.notifyAll();
        }
        if (gVar.d != null && gVar.e != null) {
            gVar.e.post(new d(gVar));
        }
    }

    public int a(int i, Bundle bundle, h hVar) {
        g gVar = new g(bundle, null);
        if (hVar != null) {
            gVar.d = hVar;
            if (Looper.myLooper() != null) {
                gVar.e = new Handler();
            } else {
                gVar.e = b();
            }
        }
        this.d.a(gVar);
        return gVar.a;
    }

    public Bundle a(int i, Bundle bundle) {
        return a(i, bundle, 60000);
    }

    public Bundle a(int i, Bundle bundle, int i2) {
        Bundle bundle2 = null;
        g gVar = new g(bundle, null);
        this.d.a(gVar);
        synchronized (gVar) {
            if (!gVar.f) {
                try {
                    gVar.wait((long) i2);
                } catch (Exception e) {
                }
                if (!gVar.f) {
                    this.d.b(gVar);
                }
                bundle2 = gVar.g;
            }
        }
        return bundle2;
    }
}
