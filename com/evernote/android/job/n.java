package com.evernote.android.job;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.evernote.android.job.util.d;
import cxm;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Twttr */
class n {
    private static final cxm a;
    private final SharedPreferences b;
    private final o c;
    private final AtomicInteger d;
    private final p e;

    static {
        a = new d("JobStorage");
    }

    public n(Context context) {
        this.b = context.getSharedPreferences("evernote_jobs", 0);
        this.c = new o(this);
        this.d = new AtomicInteger(this.b.getInt("JOB_ID_COUNTER", 0));
        this.e = new p(this, context);
    }

    public synchronized void a(JobRequest jobRequest) {
        c(jobRequest);
        d(jobRequest);
    }

    public synchronized void a(JobRequest jobRequest, ContentValues contentValues) {
        c(jobRequest);
        try {
            this.e.getWritableDatabase().update("jobs", contentValues, "_id=?", new String[]{String.valueOf(jobRequest.a())});
        } catch (Throwable e) {
            a.a(e, "could not update %s", new Object[]{jobRequest});
        }
    }

    private void c(JobRequest jobRequest) {
        this.c.put(Integer.valueOf(jobRequest.a()), jobRequest);
    }

    public synchronized JobRequest a(int i) {
        return (JobRequest) this.c.get(Integer.valueOf(i));
    }

    public synchronized Set<JobRequest> a() {
        return a(null);
    }

    public synchronized Set<JobRequest> a(String str) {
        Set<JobRequest> hashSet;
        Throwable e;
        hashSet = new HashSet();
        Cursor query;
        try {
            SQLiteDatabase writableDatabase = this.e.getWritableDatabase();
            if (TextUtils.isEmpty(str)) {
                query = writableDatabase.query("jobs", null, null, null, null, null, null);
            } else {
                query = writableDatabase.query("jobs", null, "tag=?", new String[]{str}, null, null, null);
            }
            try {
                HashMap hashMap = new HashMap(this.c.snapshot());
                while (query.moveToNext()) {
                    Integer valueOf = Integer.valueOf(query.getInt(query.getColumnIndex("_id")));
                    if (hashMap.containsKey(valueOf)) {
                        hashSet.add(hashMap.get(valueOf));
                    } else {
                        hashSet.add(JobRequest.a(query));
                    }
                }
                if (query != null) {
                    query.close();
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            query = null;
            try {
                a.a(e, "could not load all jobs", new Object[0]);
                if (query != null) {
                    query.close();
                }
                return hashSet;
            } catch (Throwable th) {
                e = th;
                if (query != null) {
                    query.close();
                }
                throw e;
            }
        } catch (Throwable th2) {
            e = th2;
            query = null;
            if (query != null) {
                query.close();
            }
            throw e;
        }
        return hashSet;
    }

    public synchronized void b(JobRequest jobRequest) {
        this.c.remove(Integer.valueOf(jobRequest.a()));
        try {
            this.e.getWritableDatabase().delete("jobs", "_id=?", new String[]{String.valueOf(jobRequest.a())});
        } catch (Throwable e) {
            a.a(e, "could not delete %s", new Object[]{jobRequest});
        }
    }

    public synchronized int b() {
        int incrementAndGet;
        incrementAndGet = this.d.incrementAndGet();
        this.b.edit().putInt("JOB_ID_COUNTER", incrementAndGet).apply();
        return incrementAndGet;
    }

    private void d(JobRequest jobRequest) {
        try {
            this.e.getWritableDatabase().insert("jobs", null, jobRequest.w());
        } catch (Throwable e) {
            a.a(e, "could not store %s", new Object[]{jobRequest});
        }
    }

    private JobRequest b(int i) {
        Cursor query;
        Throwable e;
        try {
            query = this.e.getWritableDatabase().query("jobs", null, "_id=?", new String[]{String.valueOf(i)}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    JobRequest a = JobRequest.a(query);
                    if (query == null) {
                        return a;
                    }
                    query.close();
                    return a;
                }
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (Exception e2) {
                e = e2;
                try {
                    a.a(e, "could not load id %d", new Object[]{Integer.valueOf(i)});
                    if (query != null) {
                        query.close();
                    }
                    return null;
                } catch (Throwable th) {
                    e = th;
                    if (query != null) {
                        query.close();
                    }
                    throw e;
                }
            }
        } catch (Exception e3) {
            e = e3;
            query = null;
            a.a(e, "could not load id %d", new Object[]{Integer.valueOf(i)});
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th2) {
            e = th2;
            query = null;
            if (query != null) {
                query.close();
            }
            throw e;
        }
    }
}
