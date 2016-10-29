package com.facebook.cache.common;

import com.facebook.cache.common.CacheErrorLogger.CacheErrorCategory;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class b implements CacheErrorLogger {
    private static b a;

    static {
        a = null;
    }

    private b() {
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (a == null) {
                a = new b();
            }
            bVar = a;
        }
        return bVar;
    }

    public void a(CacheErrorCategory cacheErrorCategory, Class<?> cls, String str, @Nullable Throwable th) {
    }
}
