package com.evernote.android.job;

import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.evernote.android.job.Job.Result;
import com.evernote.android.job.util.f;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
final class g implements Callable<Result> {
    final /* synthetic */ e a;
    private final Job b;
    private final WakeLock c;

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    private g(e eVar, Job job) {
        this.a = eVar;
        this.b = job;
        this.c = ((PowerManager) this.b.f().getSystemService("power")).newWakeLock(1, "JobExecutor");
        this.c.setReferenceCounted(false);
        c();
    }

    public Result a() throws Exception {
        try {
            c();
            Result b = b();
            if (this.c.isHeld()) {
                try {
                    this.c.release();
                } catch (Throwable e) {
                    e.a.b(e);
                }
            } else {
                e.a.c("Wake lock was not held after job %s was done. The job took too long to complete. This could have unintended side effects on your app.", new Object[]{this.b});
            }
            return b;
        } catch (Throwable th) {
            if (this.c.isHeld()) {
                try {
                    this.c.release();
                } catch (Throwable e2) {
                    e.a.b(e2);
                }
            } else {
                e.a.c("Wake lock was not held after job %s was done. The job took too long to complete. This could have unintended side effects on your app.", new Object[]{this.b});
            }
        }
    }

    private Result b() {
        try {
            Result a = this.b.a();
            e.a.b("Finished %s", new Object[]{this.b});
            a(a);
            return a;
        } catch (Throwable th) {
            e.a.a(th, "Crashed %s", new Object[]{this.b});
            return this.b.k();
        }
    }

    private void a(Result result) {
        JobRequest e = this.b.e().e();
        if (!e.g() && Result.c.equals(result)) {
            this.b.a(e.a(true));
        } else if (e.g() && !Result.a.equals(result)) {
            e.v();
        }
    }

    private void c() {
        if (!this.c.isHeld() && f.b(this.b.f())) {
            try {
                this.c.acquire(TimeUnit.MINUTES.toMillis(3));
            } catch (Throwable e) {
                e.a.b(e);
            }
        }
    }
}
