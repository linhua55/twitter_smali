package com.evernote.android.job;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.evernote.android.job.JobRequest.NetworkType;
import com.evernote.android.job.util.a;
import com.evernote.android.job.util.d;
import defpackage.cxm;
import java.lang.ref.WeakReference;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class Job {
    private static final cxm a;
    private b b;
    private WeakReference<Context> c;
    private Context d;
    private boolean e;
    private long f;
    private Result g;

    /* compiled from: Twttr */
    public enum Result {
        SUCCESS,
        FAILURE,
        RESCHEDULE
    }

    @NonNull
    @WorkerThread
    protected abstract Result a(b bVar);

    public Job() {
        this.f = -1;
        this.g = Result.FAILURE;
    }

    static {
        a = new d("Job");
    }

    final Result a() {
        try {
            if (l()) {
                this.g = a(e());
            } else {
                this.g = e().c() ? Result.FAILURE : Result.RESCHEDULE;
            }
            Result result = this.g;
            return result;
        } finally {
            this.f = System.currentTimeMillis();
        }
    }

    @WorkerThread
    protected void a(int i) {
    }

    private boolean l() {
        if (!e().e().i()) {
            return true;
        }
        if (!b()) {
            a.b("Job requires charging, reschedule");
            return false;
        } else if (!c()) {
            a.b("Job requires device to be idle, reschedule");
            return false;
        } else if (d()) {
            return true;
        } else {
            a.c("Job requires network to be %s, but was %s", e().e().l(), a.c(f()));
            return false;
        }
    }

    protected boolean b() {
        return !e().e().j() || a.a(f());
    }

    protected boolean c() {
        return !e().e().k() || a.b(f());
    }

    protected boolean d() {
        switch (a.a[e().e().l().ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return true;
            case WireMessage.WIRE_CONTROL /*2*/:
                return NetworkType.c.equals(a.c(f()));
            case WireMessage.WIRE_AUTH /*3*/:
                if (NetworkType.a.equals(a.c(f()))) {
                    return false;
                }
                return true;
            default:
                throw new IllegalStateException("not implemented");
        }
    }

    final Job a(JobRequest jobRequest) {
        this.b = new b(jobRequest, null);
        return this;
    }

    @NonNull
    protected final b e() {
        return this.b;
    }

    final Job a(Context context) {
        this.c = new WeakReference(context);
        this.d = context.getApplicationContext();
        return this;
    }

    @NonNull
    protected final Context f() {
        Context context = (Context) this.c.get();
        return context == null ? this.d : context;
    }

    public final void g() {
        if (!i()) {
            this.e = true;
        }
    }

    protected final boolean h() {
        return this.e;
    }

    public final boolean i() {
        return this.f > 0;
    }

    final long j() {
        return this.f;
    }

    final Result k() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.b.equals(((Job) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        return "job{id=" + this.b.a() + ", finished=" + i() + ", result=" + this.g + ", canceled=" + this.e + ", periodic=" + this.b.c() + ", class=" + getClass().getSimpleName() + ", tag=" + this.b.b() + '}';
    }
}
