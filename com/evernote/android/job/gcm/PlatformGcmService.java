package com.evernote.android.job.gcm;

import com.evernote.android.job.Job.Result;
import com.evernote.android.job.JobRequest;
import com.google.android.gms.gcm.GcmTaskService;
import com.google.android.gms.gcm.k;

/* compiled from: Twttr */
public class PlatformGcmService extends GcmTaskService {
    public int a(k kVar) {
        com.evernote.android.job.k kVar2 = new com.evernote.android.job.k(this, Integer.parseInt(kVar.a()));
        JobRequest a = kVar2.a();
        if (a == null) {
            kVar2.b();
            return 2;
        }
        if (Result.SUCCESS.equals(kVar2.d(a))) {
            return 0;
        }
        return 2;
    }
}
