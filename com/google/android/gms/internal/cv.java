package com.google.android.gms.internal;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

public class cv extends Thread {
    private static final boolean a;
    private final BlockingQueue<zzk<?>> b;
    private final BlockingQueue<zzk<?>> c;
    private final av d;
    private final vp e;
    private volatile boolean f;

    static {
        a = xi.b;
    }

    public cv(BlockingQueue<zzk<?>> blockingQueue, BlockingQueue<zzk<?>> blockingQueue2, av avVar, vp vpVar) {
        this.f = false;
        this.b = blockingQueue;
        this.c = blockingQueue2;
        this.d = avVar;
        this.e = vpVar;
    }

    public void a() {
        this.f = true;
        interrupt();
    }

    public void run() {
        if (a) {
            xi.a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.d.a();
        while (true) {
            try {
                zzk com_google_android_gms_internal_zzk = (zzk) this.b.take();
                com_google_android_gms_internal_zzk.b("cache-queue-take");
                if (com_google_android_gms_internal_zzk.g()) {
                    com_google_android_gms_internal_zzk.c("cache-discard-canceled");
                } else {
                    aw a = this.d.a(com_google_android_gms_internal_zzk.e());
                    if (a == null) {
                        com_google_android_gms_internal_zzk.b("cache-miss");
                        this.c.put(com_google_android_gms_internal_zzk);
                    } else if (a.a()) {
                        com_google_android_gms_internal_zzk.b("cache-hit-expired");
                        com_google_android_gms_internal_zzk.a(a);
                        this.c.put(com_google_android_gms_internal_zzk);
                    } else {
                        com_google_android_gms_internal_zzk.b("cache-hit");
                        uy a2 = com_google_android_gms_internal_zzk.a(new pn(a.a, a.g));
                        com_google_android_gms_internal_zzk.b("cache-hit-parsed");
                        if (a.b()) {
                            com_google_android_gms_internal_zzk.b("cache-hit-refresh-needed");
                            com_google_android_gms_internal_zzk.a(a);
                            a2.d = true;
                            this.e.a(com_google_android_gms_internal_zzk, a2, new cw(this, com_google_android_gms_internal_zzk));
                        } else {
                            this.e.a(com_google_android_gms_internal_zzk, a2);
                        }
                    }
                }
            } catch (InterruptedException e) {
                if (this.f) {
                    return;
                }
            }
        }
    }
}
