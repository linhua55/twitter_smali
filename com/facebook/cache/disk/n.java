package com.facebook.cache.disk;

import android.os.SystemClock;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheErrorLogger.CacheErrorCategory;
import com.facebook.cache.common.CacheEventListener;
import com.facebook.cache.common.CacheEventListener.EvictionReason;
import com.facebook.cache.common.a;
import com.facebook.cache.common.e;
import com.facebook.common.statfs.StatFsHelper;
import com.facebook.common.statfs.StatFsHelper.StorageType;
import com.facebook.common.util.b;
import defpackage.av;
import defpackage.aw;
import defpackage.az;
import defpackage.ba;
import defpackage.cb;
import defpackage.ck;
import defpackage.cn;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
public class n implements az, s {
    private static final Class<?> a;
    private static final long b;
    private static final long c;
    private final long d;
    private final long e;
    private long f;
    private final CacheEventListener g;
    @GuardedBy("mLock")
    private long h;
    private final long i;
    private final StatFsHelper j;
    private final r k;
    private final CacheErrorLogger l;
    private final o m;
    private final ck n;
    private final Object o;

    static {
        a = n.class;
        b = TimeUnit.HOURS.toMillis(2);
        c = TimeUnit.MINUTES.toMillis(30);
    }

    public n(r rVar, p pVar, CacheEventListener cacheEventListener, CacheErrorLogger cacheErrorLogger, @Nullable ba baVar) {
        this.o = new Object();
        this.d = pVar.b;
        this.e = pVar.c;
        this.f = pVar.c;
        this.j = StatFsHelper.a();
        this.k = rVar;
        this.h = -1;
        this.g = cacheEventListener;
        this.i = pVar.a;
        this.l = cacheErrorLogger;
        this.m = new o();
        if (baVar != null) {
            baVar.a(this);
        }
        this.n = cn.b();
    }

    public av a(a aVar) {
        try {
            av d;
            synchronized (this.o) {
                d = this.k.a().d(b(aVar), aVar);
                if (d == null) {
                    this.g.b();
                } else {
                    this.g.a();
                }
            }
            return d;
        } catch (Throwable e) {
            this.l.a(CacheErrorCategory.GENERIC_IO, a, "getResource", e);
            this.g.d();
            return null;
        }
    }

    private av a(String str, a aVar) throws IOException {
        b();
        return this.k.a().c(str, aVar);
    }

    private void a(av avVar) {
        if (avVar instanceof aw) {
            File c = ((aw) avVar).c();
            if (c.exists()) {
                cb.c(a, "Temp file still on disk: %s ", c);
                if (!c.delete()) {
                    cb.c(a, "Failed to delete temp file: %s", c);
                }
            }
        }
    }

    private av a(String str, a aVar, av avVar) throws IOException {
        av b;
        synchronized (this.o) {
            b = this.k.a().b(str, avVar, aVar);
            this.m.b(b.b(), 1);
        }
        return b;
    }

    public av a(a aVar, e eVar) throws IOException {
        av a;
        this.g.c();
        String b = b(aVar);
        try {
            a = a(b, aVar);
            this.k.a().a(b, a, eVar, aVar);
            av a2 = a(b, aVar, a);
            a(a);
            return a2;
        } catch (Throwable e) {
            this.g.e();
            cb.a(a, "Failed inserting a file into the cache", e);
            throw e;
        } catch (Throwable th) {
            a(a);
        }
    }

    private void a(EvictionReason evictionReason, int i, long j) {
        this.g.a(evictionReason, i, j);
    }

    private void b() throws IOException {
        synchronized (this.o) {
            boolean d = d();
            c();
            long c = this.m.c();
            if (c > this.f && !d) {
                this.m.b();
                d();
            }
            if (c > this.f) {
                a((this.f * 9) / 10, EvictionReason.CACHE_FULL);
            }
        }
    }

    @GuardedBy("mLock")
    private void a(long j, EvictionReason evictionReason) throws IOException {
        l a = this.k.a();
        try {
            long c = this.m.c() - j;
            int i = 0;
            long j2 = 0;
            for (m mVar : a(a.d())) {
                if (j2 > c) {
                    break;
                }
                long j3;
                int i2;
                long a2 = a.a(mVar);
                if (a2 > 0) {
                    j3 = j2 + a2;
                    i2 = i + 1;
                } else {
                    long j4 = j2;
                    i2 = i;
                    j3 = j4;
                }
                i = i2;
                j2 = j3;
            }
            this.m.b(-j2, (long) (-i));
            a.a();
            a(evictionReason, i, j2);
        } catch (Throwable e) {
            this.l.a(CacheErrorCategory.EVICTION, a, "evictAboveSize: " + e.getMessage(), e);
            throw e;
        }
    }

    private Collection<m> a(Collection<m> collection) {
        Collection arrayList = new ArrayList(collection);
        Collections.sort(arrayList, new q(this.n.a() + b));
        return arrayList;
    }

    @GuardedBy("mLock")
    private void c() {
        if (this.j.a(StorageType.INTERNAL, this.e - this.m.c())) {
            this.f = this.d;
        } else {
            this.f = this.e;
        }
    }

    public void a() {
        synchronized (this.o) {
            try {
                this.k.a().b();
            } catch (Throwable e) {
                this.l.a(CacheErrorCategory.EVICTION, a, "clearAll: " + e.getMessage(), e);
            }
            this.m.b();
        }
    }

    @GuardedBy("mLock")
    private boolean d() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.m.a() && this.h != -1 && elapsedRealtime - this.h <= c) {
            return false;
        }
        e();
        this.h = elapsedRealtime;
        return true;
    }

    @GuardedBy("mLock")
    private void e() {
        Object obj = null;
        int i = 0;
        int i2 = 0;
        long j = -1;
        long a = this.n.a();
        long j2 = a + b;
        try {
            long j3 = 0;
            int i3 = 0;
            for (m mVar : this.k.a().d()) {
                long max;
                int i4;
                int i5;
                Object obj2;
                int i6 = i3 + 1;
                j3 += mVar.c();
                if (mVar.a() > j2) {
                    int i7 = i + 1;
                    i = (int) (((long) i2) + mVar.c());
                    max = Math.max(mVar.a() - a, j);
                    i4 = i;
                    i5 = i7;
                    obj2 = 1;
                } else {
                    long j4 = j;
                    i4 = i2;
                    i5 = i;
                    max = j4;
                    obj2 = obj;
                }
                obj = obj2;
                i3 = i6;
                i = i5;
                i2 = i4;
                j = max;
            }
            if (obj != null) {
                this.l.a(CacheErrorCategory.READ_INVALID_ENTRY, a, "Future timestamp found in " + i + " files , with a total size of " + i2 + " bytes, and a maximum time delta of " + j + "ms", null);
            }
            this.m.a(j3, (long) i3);
        } catch (Throwable e) {
            this.l.a(CacheErrorCategory.GENERIC_IO, a, "calcFileCacheSize: " + e.getMessage(), e);
        }
    }

    String b(a aVar) {
        try {
            return b.a(aVar.toString().getBytes(Util.UTF_8));
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }
}
