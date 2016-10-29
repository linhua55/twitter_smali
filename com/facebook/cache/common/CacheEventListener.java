package com.facebook.cache.common;

/* compiled from: Twttr */
public interface CacheEventListener {

    /* compiled from: Twttr */
    public enum EvictionReason {
        CACHE_FULL,
        CONTENT_STALE,
        USER_FORCED,
        CACHE_MANAGER_TRIMMED
    }

    void a();

    void a(EvictionReason evictionReason, int i, long j);

    void b();

    void c();

    void d();

    void e();
}
