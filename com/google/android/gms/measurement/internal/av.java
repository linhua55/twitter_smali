package com.google.android.gms.measurement.internal;

import com.google.android.exoplayer.hls.HlsChunkSource;

public final class av {
    public static aw<Long> A;
    public static aw<Boolean> a;
    public static aw<Boolean> b;
    public static aw<String> c;
    public static aw<Long> d;
    public static aw<Long> e;
    public static aw<Long> f;
    public static aw<String> g;
    public static aw<String> h;
    public static aw<Integer> i;
    public static aw<Integer> j;
    public static aw<Integer> k;
    public static aw<Integer> l;
    public static aw<Integer> m;
    public static aw<Integer> n;
    public static aw<Integer> o;
    public static aw<Integer> p;
    public static aw<String> q;
    public static aw<Long> r;
    public static aw<Long> s;
    public static aw<Long> t;
    public static aw<Long> u;
    public static aw<Long> v;
    public static aw<Long> w;
    public static aw<Integer> x;
    public static aw<Long> y;
    public static aw<Integer> z;

    static {
        a = aw.a("measurement.service_enabled", true);
        b = aw.a("measurement.service_client_enabled", true);
        c = aw.a("measurement.log_tag", "GMPM", "GMPM-SVC");
        d = aw.a("measurement.ad_id_cache_time", 10000);
        e = aw.a("measurement.monitoring.sample_period_millis", 86400000);
        f = aw.a("measurement.config.cache_time", 86400000);
        g = aw.a("measurement.config.url_scheme", "https");
        h = aw.a("measurement.config.url_authority", "app-measurement.com");
        i = aw.a("measurement.upload.max_bundles", 100);
        j = aw.a("measurement.upload.max_batch_size", 65536);
        k = aw.a("measurement.upload.max_bundle_size", 65536);
        l = aw.a("measurement.upload.max_events_per_bundle", (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE);
        m = aw.a("measurement.upload.max_events_per_day", 100000);
        n = aw.a("measurement.upload.max_public_events_per_day", 50000);
        o = aw.a("measurement.upload.max_conversions_per_day", 500);
        p = aw.a("measurement.store.max_stored_events_per_app", 100000);
        q = aw.a("measurement.upload.url", "https://app-measurement.com/a");
        r = aw.a("measurement.upload.backoff_period", 43200000);
        s = aw.a("measurement.upload.window_interval", 3600000);
        t = aw.a("measurement.upload.interval", 3600000);
        u = aw.a("measurement.upload.stale_data_deletion_interval", 86400000);
        v = aw.a("measurement.upload.initial_upload_delay_time", 15000);
        w = aw.a("measurement.upload.retry_time", 1800000);
        x = aw.a("measurement.upload.retry_count", 6);
        y = aw.a("measurement.upload.max_queue_time", 2419200000L);
        z = aw.a("measurement.lifetimevalue.max_currency_tracked", 4);
        A = aw.a("measurement.service_client.idle_disconnect_millis", (long) HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    }
}
