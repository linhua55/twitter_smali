package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build.VERSION;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

public class mg extends Thread {
    private final BlockingQueue<zzk<?>> a;
    private final km b;
    private final av c;
    private final vp d;
    private volatile boolean e;

    public mg(BlockingQueue<zzk<?>> blockingQueue, km kmVar, av avVar, vp vpVar) {
        this.e = false;
        this.a = blockingQueue;
        this.b = kmVar;
        this.c = avVar;
        this.d = vpVar;
    }

    @TargetApi(14)
    private void a(zzk<?> com_google_android_gms_internal_zzk_) {
        if (VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(com_google_android_gms_internal_zzk_.c());
        }
    }

    private void a(zzk<?> com_google_android_gms_internal_zzk_, zzr com_google_android_gms_internal_zzr) {
        this.d.a((zzk) com_google_android_gms_internal_zzk_, com_google_android_gms_internal_zzk_.a(com_google_android_gms_internal_zzr));
    }

    public void a() {
        this.e = true;
        interrupt();
    }

    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                zzk com_google_android_gms_internal_zzk = (zzk) this.a.take();
                try {
                    com_google_android_gms_internal_zzk.b("network-queue-take");
                    if (com_google_android_gms_internal_zzk.g()) {
                        com_google_android_gms_internal_zzk.c("network-discard-cancelled");
                    } else {
                        a(com_google_android_gms_internal_zzk);
                        pn a = this.b.a(com_google_android_gms_internal_zzk);
                        com_google_android_gms_internal_zzk.b("network-http-complete");
                        if (a.d && com_google_android_gms_internal_zzk.u()) {
                            com_google_android_gms_internal_zzk.c("not-modified");
                        } else {
                            uy a2 = com_google_android_gms_internal_zzk.a(a);
                            com_google_android_gms_internal_zzk.b("network-parse-complete");
                            if (com_google_android_gms_internal_zzk.p() && a2.b != null) {
                                this.c.a(com_google_android_gms_internal_zzk.e(), a2.b);
                                com_google_android_gms_internal_zzk.b("network-cache-written");
                            }
                            com_google_android_gms_internal_zzk.t();
                            this.d.a(com_google_android_gms_internal_zzk, a2);
                        }
                    }
                } catch (zzr e) {
                    e.a(SystemClock.elapsedRealtime() - elapsedRealtime);
                    a(com_google_android_gms_internal_zzk, e);
                } catch (Throwable e2) {
                    xi.a(e2, "Unhandled exception %s", e2.toString());
                    zzr com_google_android_gms_internal_zzr = new zzr(e2);
                    com_google_android_gms_internal_zzr.a(SystemClock.elapsedRealtime() - elapsedRealtime);
                    this.d.a(com_google_android_gms_internal_zzk, com_google_android_gms_internal_zzr);
                }
            } catch (InterruptedException e3) {
                if (this.e) {
                    return;
                }
            }
        }
    }
}
