package com.evernote.android.job;

import android.content.ContentValues;
import android.database.Cursor;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import ar;
import com.evernote.android.job.util.JobApi;
import com.evernote.android.job.util.d;
import com.evernote.android.job.util.e;
import defpackage.cxm;
import java.util.concurrent.TimeUnit;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public final class JobRequest {
    public static final BackoffPolicy a;
    public static final NetworkType b;
    private static final cxm c;
    private final m d;
    private final JobApi e;
    private int f;
    private long g;

    static {
        a = BackoffPolicy.b;
        b = NetworkType.a;
        c = new d("JobRequest");
    }

    private JobRequest(m mVar) {
        this.d = mVar;
        this.e = m.a(mVar) ? JobApi.b : h.a().d();
    }

    public int a() {
        return m.b(this.d);
    }

    @NonNull
    public String b() {
        return m.c(this.d);
    }

    public long c() {
        return m.d(this.d);
    }

    public long d() {
        return m.e(this.d);
    }

    public BackoffPolicy e() {
        return m.f(this.d);
    }

    public long f() {
        return m.g(this.d);
    }

    public boolean g() {
        return h() > 0;
    }

    public long h() {
        return m.h(this.d);
    }

    public boolean i() {
        return m.i(this.d);
    }

    public boolean j() {
        return m.j(this.d);
    }

    public boolean k() {
        return m.k(this.d);
    }

    public NetworkType l() {
        return m.l(this.d);
    }

    public ar m() {
        if (m.m(this.d) == null && !TextUtils.isEmpty(m.n(this.d))) {
            m.a(this.d, ar.a(m.n(this.d)));
        }
        return m.m(this.d);
    }

    public boolean n() {
        return m.o(this.d);
    }

    public boolean o() {
        return m.p(this.d);
    }

    public boolean p() {
        return m.a(this.d);
    }

    long q() {
        long j = 0;
        if (g()) {
            return 0;
        }
        switch (l.a[e().ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                j = ((long) this.f) * f();
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (this.f != 0) {
                    j = (long) (((double) f()) * Math.pow(2.0d, (double) (this.f - 1)));
                    break;
                }
                break;
            default:
                throw new IllegalStateException("not implemented");
        }
        return Math.min(j, TimeUnit.HOURS.toMillis(5));
    }

    JobApi r() {
        return this.e;
    }

    void a(long j) {
        this.g = j;
    }

    long s() {
        return this.g;
    }

    public int t() {
        h.a().a(this);
        return a();
    }

    public m u() {
        h.a().c(a());
        m mVar = new m(this, false, null);
        if (!g()) {
            long currentTimeMillis = System.currentTimeMillis() - this.g;
            mVar.a(Math.max(1, c() - currentTimeMillis), Math.max(1, d() - currentTimeMillis));
        }
        return mVar;
    }

    int a(boolean z) {
        JobRequest a = new m(this, true, null).a();
        if (z) {
            a.f = this.f + 1;
        }
        return a.t();
    }

    void v() {
        this.f++;
        ContentValues contentValues = new ContentValues();
        contentValues.put("numFailures", Integer.valueOf(this.f));
        h.a().e().a(this, contentValues);
    }

    ContentValues w() {
        ContentValues contentValues = new ContentValues();
        m.a(this.d, contentValues);
        contentValues.put("numFailures", Integer.valueOf(this.f));
        contentValues.put("scheduledAt", Long.valueOf(this.g));
        return contentValues;
    }

    static JobRequest a(Cursor cursor) throws Exception {
        JobRequest a = new m(cursor, null).a();
        a.f = cursor.getInt(cursor.getColumnIndex("numFailures"));
        a.g = cursor.getLong(cursor.getColumnIndex("scheduledAt"));
        e.a(a.f, "failure count can't be negative");
        e.a(a.g, "scheduled at can't be negative");
        return a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.d.equals(((JobRequest) obj).d);
    }

    public int hashCode() {
        return this.d.hashCode();
    }

    public String toString() {
        return "request{id=" + a() + ", tag=" + b() + '}';
    }
}
