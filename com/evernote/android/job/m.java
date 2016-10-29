package com.evernote.android.job;

import android.content.ContentValues;
import android.database.Cursor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.evernote.android.job.util.e;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.google.android.exoplayer.hls.HlsChunkSource;
import defpackage.ar;

/* compiled from: Twttr */
public final class m {
    private final int a;
    private final String b;
    private long c;
    private long d;
    private long e;
    private JobRequest$BackoffPolicy f;
    private long g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private JobRequest$NetworkType l;
    private ar m;
    private String n;
    private boolean o;
    private boolean p;

    public m(@NonNull String str) {
        this.b = (String) e.a((CharSequence) str);
        this.a = h.a().e().b();
        this.c = -1;
        this.d = -1;
        this.e = 30000;
        this.f = JobRequest.a;
        this.l = JobRequest.b;
    }

    private m(JobRequest jobRequest, boolean z) {
        this.a = z ? h.a().e().b() : jobRequest.a();
        this.b = jobRequest.b();
        this.c = jobRequest.c();
        this.d = jobRequest.d();
        this.e = jobRequest.f();
        this.f = jobRequest.e();
        this.g = jobRequest.h();
        this.h = jobRequest.i();
        this.i = jobRequest.j();
        this.j = jobRequest.k();
        this.k = jobRequest.p();
        this.l = jobRequest.l();
        this.m = JobRequest.a(jobRequest).m;
        this.n = JobRequest.a(jobRequest).n;
        this.o = jobRequest.n();
    }

    private m(Cursor cursor) throws Exception {
        boolean z;
        boolean z2 = true;
        this.a = cursor.getInt(cursor.getColumnIndex("_id"));
        this.b = cursor.getString(cursor.getColumnIndex("tag"));
        this.c = cursor.getLong(cursor.getColumnIndex("startMs"));
        this.d = cursor.getLong(cursor.getColumnIndex("endMs"));
        this.e = cursor.getLong(cursor.getColumnIndex("backoffMs"));
        try {
            this.f = JobRequest$BackoffPolicy.valueOf(cursor.getString(cursor.getColumnIndex("backoffPolicy")));
        } catch (Throwable th) {
            JobRequest.x().b(th);
            this.f = JobRequest.a;
        }
        this.g = cursor.getLong(cursor.getColumnIndex("intervalMs"));
        if (cursor.getInt(cursor.getColumnIndex("requirementsEnforced")) > 0) {
            z = true;
        } else {
            z = false;
        }
        this.h = z;
        if (cursor.getInt(cursor.getColumnIndex("requiresCharging")) > 0) {
            z = true;
        } else {
            z = false;
        }
        this.i = z;
        if (cursor.getInt(cursor.getColumnIndex("requiresDeviceIdle")) > 0) {
            z = true;
        } else {
            z = false;
        }
        this.j = z;
        if (cursor.getInt(cursor.getColumnIndex("exact")) > 0) {
            z = true;
        } else {
            z = false;
        }
        this.k = z;
        try {
            this.l = JobRequest$NetworkType.valueOf(cursor.getString(cursor.getColumnIndex("networkType")));
        } catch (Throwable th2) {
            JobRequest.x().b(th2);
            this.l = JobRequest.b;
        }
        this.n = cursor.getString(cursor.getColumnIndex("extras"));
        if (cursor.getInt(cursor.getColumnIndex("persisted")) <= 0) {
            z2 = false;
        }
        this.o = z2;
    }

    private void a(ContentValues contentValues) {
        contentValues.put("_id", Integer.valueOf(this.a));
        contentValues.put("tag", this.b);
        contentValues.put("startMs", Long.valueOf(this.c));
        contentValues.put("endMs", Long.valueOf(this.d));
        contentValues.put("backoffMs", Long.valueOf(this.e));
        contentValues.put("backoffPolicy", this.f.toString());
        contentValues.put("intervalMs", Long.valueOf(this.g));
        contentValues.put("requirementsEnforced", Boolean.valueOf(this.h));
        contentValues.put("requiresCharging", Boolean.valueOf(this.i));
        contentValues.put("requiresDeviceIdle", Boolean.valueOf(this.j));
        contentValues.put("exact", Boolean.valueOf(this.k));
        contentValues.put("networkType", this.l.toString());
        if (this.m != null) {
            contentValues.put("extras", this.m.a());
        } else if (!TextUtils.isEmpty(this.n)) {
            contentValues.put("extras", this.n);
        }
        contentValues.put("persisted", Boolean.valueOf(this.o));
    }

    public m a(long j, long j2) {
        this.c = e.b(j, "startMs must be greater than 0");
        this.d = e.a(j2, j, PtsTimestampAdjuster.DO_NOT_OFFSET, "endMs");
        return this;
    }

    public m a(@Nullable ar arVar) {
        if (arVar == null) {
            this.m = null;
            this.n = null;
        } else {
            this.m = new ar(arVar);
        }
        return this;
    }

    public m a(boolean z) {
        this.i = z;
        return this;
    }

    public m b(boolean z) {
        this.j = z;
        return this;
    }

    public m a(long j) {
        this.g = e.a(j, HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS, PtsTimestampAdjuster.DO_NOT_OFFSET, "intervalMs");
        return this;
    }

    public m c(boolean z) {
        this.p = z;
        return this;
    }

    public JobRequest a() {
        e.a(this.a, "id can't be negative");
        e.a(this.b);
        e.b(this.e, "backoffMs must be > 0");
        e.a(this.f);
        e.a(this.l);
        if (this.g > 0) {
            e.a(this.g, HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS, PtsTimestampAdjuster.DO_NOT_OFFSET, "intervalMs");
        }
        if (this.k && this.g > 0) {
            throw new IllegalArgumentException("Can't call setExact() on a periodic job.");
        } else if (this.k && this.c != this.d) {
            throw new IllegalArgumentException("Can't call setExecutionWindow() for an exact job.");
        } else if (this.k && (this.h || this.j || this.i || !JobRequest.b.equals(this.l))) {
            throw new IllegalArgumentException("Can't require any condition for an exact job.");
        } else if (this.g <= 0 && (this.c == -1 || this.d == -1)) {
            throw new IllegalArgumentException("You're trying to build a job with no constraints, this is not allowed.");
        } else if (this.g > 0 && (this.c != -1 || this.d != -1)) {
            throw new IllegalArgumentException("Can't call setExecutionWindow() on a periodic job.");
        } else if (this.g <= 0 || (this.e == 30000 && JobRequest.a.equals(this.f))) {
            return new JobRequest(this, null);
        } else {
            throw new IllegalArgumentException("A periodic job will not respect any back-off policy, so calling setBackoffCriteria() with setPeriodic() is an error.");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (this.a != ((m) obj).a) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.a;
    }
}
