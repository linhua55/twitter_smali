package com.evernote.android.job;

import android.app.Service;
import android.content.Context;
import android.os.Looper;
import android.support.annotation.NonNull;
import com.evernote.android.job.Job.Result;
import com.evernote.android.job.util.JobApi;
import com.evernote.android.job.util.d;
import com.evernote.android.job.util.f;
import defpackage.cxm;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* compiled from: Twttr */
public final class k {
    private final Context a;
    private final int b;
    private final cxm c;

    public static long a(JobRequest jobRequest) {
        return jobRequest.c() + jobRequest.q();
    }

    public static long b(JobRequest jobRequest) {
        return jobRequest.d() + jobRequest.q();
    }

    public static long c(JobRequest jobRequest) {
        return a(jobRequest) + ((b(jobRequest) - a(jobRequest)) / 2);
    }

    public k(Service service, int i) {
        this.a = service;
        this.b = i;
        this.c = new d(service.getClass());
    }

    public JobRequest a() {
        return a(h.a());
    }

    public JobRequest a(h hVar) {
        JobRequest a = hVar.a(this.b);
        Job b = hVar.b(this.b);
        int i = (a == null || !a.g()) ? 0 : 1;
        if (b != null && !b.i()) {
            this.c.a("Job %d is already running, %s", Integer.valueOf(this.b), a);
            return null;
        } else if (b != null && i == 0) {
            this.c.a("Job %d already finished, %s", Integer.valueOf(this.b), a);
            return null;
        } else if (b != null && System.currentTimeMillis() - b.j() < 2000) {
            this.c.a("Job %d is periodic and just finished, %s", Integer.valueOf(this.b), a);
            return null;
        } else if (a != null) {
            return a;
        } else {
            this.c.a("Request for ID %d was null", Integer.valueOf(this.b));
            return null;
        }
    }

    @NonNull
    public Result d(@NonNull JobRequest jobRequest) {
        String str;
        Throwable e;
        Job a;
        long currentTimeMillis = System.currentTimeMillis() - jobRequest.s();
        if (JobApi.b.equals(jobRequest.r())) {
            str = "delay " + f.a(c(jobRequest));
        } else {
            str = String.format(Locale.US, "start %s, end %s", new Object[]{f.a(a(jobRequest)), f.a(b(jobRequest))});
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.c.b("Running JobRequest on a main thread, this could cause stutter or ANR in your app.");
        }
        this.c.a("Run job, %s, waited %s, %s", jobRequest, f.a(currentTimeMillis), str);
        h a2 = h.a();
        e f = a2.f();
        try {
            if (!jobRequest.g()) {
                a2.e().b(jobRequest);
            }
            Future a3 = f.a(this.a, jobRequest, a2.g());
            if (a3 == null) {
                return Result.FAILURE;
            }
            this.c.a("Finished job, %s %s", jobRequest, (Result) a3.get());
            return (Result) a3.get();
        } catch (InterruptedException e2) {
            e = e2;
            this.c.b(e);
            a = f.a(this.b);
            if (a != null) {
                a.g();
                this.c.d("Canceled %s", jobRequest);
            }
            return Result.FAILURE;
        } catch (ExecutionException e3) {
            e = e3;
            this.c.b(e);
            a = f.a(this.b);
            if (a != null) {
                a.g();
                this.c.d("Canceled %s", jobRequest);
            }
            return Result.FAILURE;
        }
    }

    public void b() {
        a(this.a, this.b);
    }

    public static void a(Context context, int i) {
        for (JobApi jobApi : JobApi.values()) {
            if (jobApi.a(context)) {
                jobApi.c(context).a(i);
            }
        }
    }
}
