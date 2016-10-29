package com.evernote.android.job;

import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.evernote.android.job.util.JobApi;
import com.evernote.android.job.util.d;
import com.evernote.android.job.util.e;
import com.evernote.android.job.util.f;
import defpackage.cxk;
import defpackage.cxl;
import defpackage.cxm;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public final class h {
    private static final String a;
    private static final cxm b;
    private static volatile h c;
    private final Context d;
    private final d e;
    private final n f;
    private final e g;
    private JobApi h;

    static {
        a = h.class.getPackage().getName();
        b = new d("JobManager");
    }

    public static h a(Context context) {
        if (c == null) {
            synchronized (h.class) {
                if (c == null) {
                    e.a(context, "Context cannot be null");
                    cxl.a(a, new d());
                    if (context.getApplicationContext() != null) {
                        context = context.getApplicationContext();
                    }
                    c = new h(context);
                    if (!f.b(context)) {
                        cxk.b("No wake lock permission");
                    }
                    if (!f.a(context)) {
                        cxk.b("No boot permission");
                    }
                }
            }
        }
        return c;
    }

    public static h a() {
        if (c == null) {
            synchronized (h.class) {
                if (c == null) {
                    throw new IllegalStateException("You need to call create() at least once to create the singleton");
                }
            }
        }
        return c;
    }

    private h(Context context) {
        this.d = context;
        this.e = new d();
        this.f = new n(context);
        this.g = new e();
        a(JobApi.d(this.d));
        i();
    }

    protected void a(JobApi jobApi) {
        this.h = jobApi;
    }

    public void a(JobRequest jobRequest) {
        if (this.e.a()) {
            b.b("you haven't registered a JobCreator with addJobCreator(), it's likely that your job never will be executed");
        }
        if (jobRequest.o()) {
            c(jobRequest.b());
        }
        k.a(this.d, jobRequest.a());
        jobRequest.a(System.currentTimeMillis());
        this.f.a(jobRequest);
        j c = c(jobRequest);
        if (jobRequest.g()) {
            c.b(jobRequest);
        } else {
            c.a(jobRequest);
        }
    }

    public JobRequest a(int i) {
        return this.f.a(i);
    }

    @NonNull
    public Set<JobRequest> b() {
        return this.f.a();
    }

    public Set<JobRequest> a(@NonNull String str) {
        return this.f.a(str);
    }

    public Job b(int i) {
        return this.g.a(i);
    }

    @NonNull
    public Set<Job> c() {
        return this.g.a();
    }

    @NonNull
    public Set<Job> b(@NonNull String str) {
        return this.g.a(str);
    }

    public JobApi d() {
        return this.h;
    }

    public boolean c(int i) {
        boolean b = b(a(i)) | a(b(i));
        k.a(this.d, i);
        return b;
    }

    public int c(@NonNull String str) {
        return d(str);
    }

    private boolean b(@Nullable JobRequest jobRequest) {
        if (jobRequest == null) {
            return false;
        }
        b.b("Found pending job %s, canceling", jobRequest);
        c(jobRequest).a(jobRequest.a());
        e().b(jobRequest);
        return true;
    }

    private boolean a(@Nullable Job job) {
        if (job == null || job.i() || job.h()) {
            return false;
        }
        b.b("Cancel running %s", job);
        job.g();
        return true;
    }

    private int d(@Nullable String str) {
        int i = 0;
        for (JobRequest b : TextUtils.isEmpty(str) ? b() : a(str)) {
            int i2;
            if (b(b)) {
                i2 = i + 1;
            } else {
                i2 = i;
            }
            i = i2;
        }
        for (Job a : TextUtils.isEmpty(str) ? c() : b(str)) {
            if (a(a)) {
                i++;
            }
        }
        return i;
    }

    public void a(c cVar) {
        this.e.a(cVar);
    }

    n e() {
        return this.f;
    }

    e f() {
        return this.g;
    }

    d g() {
        return this.e;
    }

    private j c(JobRequest jobRequest) {
        return jobRequest.r().c(this.d);
    }

    private void i() {
        WakeLock newWakeLock = ((PowerManager) this.d.getSystemService("power")).newWakeLock(1, h.class.getName());
        if (f.b(this.d)) {
            newWakeLock.setReferenceCounted(false);
            newWakeLock.acquire(TimeUnit.SECONDS.toMillis(3));
        }
        new i(this, newWakeLock).start();
    }
}
