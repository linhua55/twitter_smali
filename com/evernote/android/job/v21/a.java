package com.evernote.android.job.v21;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.support.annotation.NonNull;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.JobRequest$NetworkType;
import com.evernote.android.job.j;
import com.evernote.android.job.k;
import com.evernote.android.job.util.d;
import com.evernote.android.job.util.f;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import cxm;
import java.util.List;

@TargetApi(21)
/* compiled from: Twttr */
public class a implements j {
    private static final cxm a;
    private final Context b;

    static {
        a = new d("JobProxy21");
    }

    public a(Context context) {
        this.b = context;
    }

    public void a(JobRequest jobRequest) {
        int schedule;
        try {
            schedule = a().schedule(d(jobRequest).setMinimumLatency(k.a(jobRequest)).setOverrideDeadline(k.b(jobRequest)).setRequiresCharging(jobRequest.j()).setRequiresDeviceIdle(jobRequest.k()).setRequiredNetworkType(a(jobRequest.l())).setPersisted(jobRequest.n()).build());
        } catch (Throwable e) {
            a.b(e);
            schedule = 0;
        }
        cxm cxm = a;
        String str = "Schedule one-off jobInfo %s, %s, start %s, end %s";
        Object[] objArr = new Object[4];
        objArr[0] = schedule == 1 ? "success" : "failure";
        objArr[1] = jobRequest;
        objArr[2] = f.a(k.a(jobRequest));
        objArr[3] = f.a(k.b(jobRequest));
        cxm.a(str, objArr);
    }

    public void b(JobRequest jobRequest) {
        int schedule;
        try {
            schedule = a().schedule(d(jobRequest).setPeriodic(jobRequest.h()).setRequiresCharging(jobRequest.j()).setRequiresDeviceIdle(jobRequest.k()).setRequiredNetworkType(a(jobRequest.l())).setPersisted(jobRequest.n()).build());
        } catch (Throwable e) {
            a.b(e);
            schedule = 0;
        }
        cxm cxm = a;
        String str = "Schedule periodic jobInfo %s, %s, interval %s";
        Object[] objArr = new Object[3];
        objArr[0] = schedule == 1 ? "success" : "failure";
        objArr[1] = jobRequest;
        objArr[2] = f.a(jobRequest.h());
        cxm.a(str, objArr);
    }

    public void a(int i) {
        try {
            a().cancel(i);
        } catch (Throwable e) {
            a.b(e);
        }
    }

    public boolean c(JobRequest jobRequest) {
        try {
            List<JobInfo> allPendingJobs = a().getAllPendingJobs();
            if (allPendingJobs == null || allPendingJobs.isEmpty()) {
                return false;
            }
            int a = jobRequest.a();
            for (JobInfo id : allPendingJobs) {
                if (id.getId() == a) {
                    return true;
                }
            }
            return false;
        } catch (Throwable e) {
            a.b(e);
            return false;
        }
    }

    protected Builder d(JobRequest jobRequest) {
        return new Builder(jobRequest.a(), new ComponentName(this.b, PlatformJobService.class));
    }

    protected int a(@NonNull JobRequest$NetworkType jobRequest$NetworkType) {
        switch (b.a[jobRequest$NetworkType.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return 0;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return 1;
            case Util.TYPE_OTHER /*3*/:
                return 2;
            default:
                throw new IllegalStateException("not implemented");
        }
    }

    protected final JobScheduler a() {
        return (JobScheduler) this.b.getSystemService("jobscheduler");
    }
}
