package com.evernote.android.job.v21;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import com.evernote.android.job.Job;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.h;
import com.evernote.android.job.k;
import com.evernote.android.job.util.d;
import defpackage.cxm;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@TargetApi(21)
/* compiled from: Twttr */
public class PlatformJobService extends JobService {
    private static final cxm a;
    private static final ExecutorService b;

    static {
        a = new d("PlatformJobService");
        b = Executors.newCachedThreadPool();
    }

    public boolean onStartJob(JobParameters jobParameters) {
        k kVar = new k(this, jobParameters.getJobId());
        JobRequest a = kVar.a();
        if (a == null) {
            kVar.b();
            return false;
        }
        b.execute(new c(this, kVar, a, jobParameters));
        return true;
    }

    public boolean onStopJob(JobParameters jobParameters) {
        Job b = h.a().b(jobParameters.getJobId());
        if (b != null) {
            b.g();
            a.a("Called onStopJob for %s", b);
        } else {
            a.a("Called onStopJob, job %d not found", Integer.valueOf(jobParameters.getJobId()));
        }
        return false;
    }
}
