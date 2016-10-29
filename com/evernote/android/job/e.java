package com.evernote.android.job;

import android.content.Context;
import android.support.annotation.NonNull;
import android.util.SparseArray;
import com.evernote.android.job.Job.Result;
import com.evernote.android.job.util.d;
import cxm;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* compiled from: Twttr */
class e {
    private static final cxm a;
    private final ExecutorService b;
    private final SparseArray<Job> c;

    static {
        a = new d("JobExecutor");
    }

    public e() {
        this.b = Executors.newCachedThreadPool();
        this.c = new SparseArray();
    }

    public synchronized Future<Result> a(@NonNull Context context, @NonNull JobRequest jobRequest, @NonNull d dVar) {
        Future<Result> future = null;
        synchronized (this) {
            Job a = dVar.a(jobRequest.b());
            if (a == null) {
                a.c("JobCreator returned null for tag %s", new Object[]{jobRequest.b()});
            } else if (a.i()) {
                throw new IllegalStateException("Job for tag %s was already run, a creator should always create a new Job instance");
            } else {
                a.a(context).a(jobRequest);
                a.b("Executing %s, context %s", new Object[]{jobRequest, context.getClass().getSimpleName()});
                this.c.put(jobRequest.a(), a);
                future = this.b.submit(new g(a, null));
            }
        }
        return future;
    }

    public synchronized Job a(int i) {
        return (Job) this.c.get(i);
    }

    public synchronized Set<Job> a() {
        return a(null);
    }

    public synchronized Set<Job> a(String str) {
        Set<Job> hashSet;
        hashSet = new HashSet();
        for (int i = 0; i < this.c.size(); i++) {
            Job job = (Job) this.c.valueAt(i);
            if (str == null || str.equals(job.e().b())) {
                hashSet.add(job);
            }
        }
        return hashSet;
    }
}
