package com.evernote.android.job.v21;

import android.app.job.JobParameters;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.k;

/* compiled from: Twttr */
class c implements Runnable {
    final /* synthetic */ k a;
    final /* synthetic */ JobRequest b;
    final /* synthetic */ JobParameters c;
    final /* synthetic */ PlatformJobService d;

    c(PlatformJobService platformJobService, k kVar, JobRequest jobRequest, JobParameters jobParameters) {
        this.d = platformJobService;
        this.a = kVar;
        this.b = jobRequest;
        this.c = jobParameters;
    }

    public void run() {
        try {
            this.a.d(this.b);
        } finally {
            this.d.jobFinished(this.c, false);
        }
    }
}
