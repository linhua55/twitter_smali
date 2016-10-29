package com.evernote.android.job;

import android.os.PowerManager.WakeLock;
import android.os.SystemClock;

/* compiled from: Twttr */
class i extends Thread {
    final /* synthetic */ WakeLock a;
    final /* synthetic */ h b;

    i(h hVar, WakeLock wakeLock) {
        this.b = hVar;
        this.a = wakeLock;
    }

    public void run() {
        int i = 0;
        try {
            SystemClock.sleep(10000);
            for (JobRequest jobRequest : h.a().b()) {
                int i2;
                if (h.a(this.b, jobRequest).c(jobRequest)) {
                    i2 = i;
                } else {
                    jobRequest.u().a().t();
                    i2 = i + 1;
                }
                i = i2;
            }
            h.h().a("Reschedule %d jobs of %d jobs", new Object[]{Integer.valueOf(i), Integer.valueOf(r2.size())});
            try {
                if (this.a.isHeld()) {
                    this.a.release();
                }
            } catch (Throwable e) {
                h.h().b(e);
            }
        } catch (Throwable th) {
            try {
                if (this.a.isHeld()) {
                    this.a.release();
                }
            } catch (Throwable e2) {
                h.h().b(e2);
            }
        }
    }
}
