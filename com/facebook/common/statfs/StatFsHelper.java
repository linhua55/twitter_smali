package com.facebook.common.statfs;

import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import defpackage.ca;
import java.io.File;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
public class StatFsHelper {
    private static StatFsHelper a;
    private static final long b;
    private volatile StatFs c;
    private volatile File d;
    private volatile StatFs e;
    private volatile File f;
    @GuardedBy("lock")
    private long g;
    private final Lock h;
    private volatile boolean i;

    /* compiled from: Twttr */
    public enum StorageType {
        INTERNAL,
        EXTERNAL
    }

    static {
        b = TimeUnit.MINUTES.toMillis(2);
    }

    public static synchronized StatFsHelper a() {
        StatFsHelper statFsHelper;
        synchronized (StatFsHelper.class) {
            if (a == null) {
                a = new StatFsHelper();
            }
            statFsHelper = a;
        }
        return statFsHelper;
    }

    protected StatFsHelper() {
        this.c = null;
        this.e = null;
        this.i = false;
        this.h = new ReentrantLock();
    }

    private void b() {
        if (!this.i) {
            this.h.lock();
            try {
                if (!this.i) {
                    this.d = Environment.getDataDirectory();
                    this.f = Environment.getExternalStorageDirectory();
                    d();
                    this.i = true;
                }
                this.h.unlock();
            } catch (Throwable th) {
                this.h.unlock();
            }
        }
    }

    public boolean a(StorageType storageType, long j) {
        b();
        long a = a(storageType);
        if (a <= 0 || a < j) {
            return true;
        }
        return false;
    }

    public long a(StorageType storageType) {
        b();
        c();
        StatFs statFs = storageType == StorageType.INTERNAL ? this.c : this.e;
        if (statFs == null) {
            return 0;
        }
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    private void c() {
        if (this.h.tryLock()) {
            try {
                if (SystemClock.elapsedRealtime() - this.g > b) {
                    d();
                }
                this.h.unlock();
            } catch (Throwable th) {
                this.h.unlock();
            }
        }
    }

    @GuardedBy("lock")
    private void d() {
        this.c = a(this.c, this.d);
        this.e = a(this.e, this.f);
        this.g = SystemClock.elapsedRealtime();
    }

    private StatFs a(@Nullable StatFs statFs, @Nullable File file) {
        if (file == null || !file.exists()) {
            return null;
        }
        if (statFs == null) {
            try {
                return a(file.getAbsolutePath());
            } catch (IllegalArgumentException e) {
                return null;
            } catch (Throwable th) {
                RuntimeException b = ca.b(th);
            }
        } else {
            statFs.restat(file.getAbsolutePath());
            return statFs;
        }
    }

    protected static StatFs a(String str) {
        return new StatFs(str);
    }
}
