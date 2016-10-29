package com.twitter.android.media.foundmedia;

import android.support.annotation.UiThread;
import bbu;
import com.twitter.android.util.v;
import com.twitter.library.network.DataUsageEvent;
import com.twitter.library.network.b;
import com.twitter.library.scribe.performance.PerformanceScribeLog;
import com.twitter.util.z;
import java.net.URI;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Twttr */
public class d implements z<DataUsageEvent> {
    public static final d a;
    private final AtomicLong b;
    private final AtomicLong c;
    private final AtomicLong d;
    private final AtomicLong e;

    public d() {
        this.b = new AtomicLong();
        this.c = new AtomicLong();
        this.d = new AtomicLong();
        this.e = new AtomicLong();
    }

    static {
        a = new d();
    }

    public void a(DataUsageEvent dataUsageEvent) {
        if (!b(dataUsageEvent)) {
            return;
        }
        if (dataUsageEvent.d) {
            this.b.addAndGet(dataUsageEvent.f);
            this.c.addAndGet(dataUsageEvent.g);
            return;
        }
        this.d.addAndGet(dataUsageEvent.f);
        this.e.addAndGet(dataUsageEvent.g);
    }

    @UiThread
    public void a() {
        this.b.set(0);
        this.c.set(0);
        this.d.set(0);
        this.e.set(0);
        b.a().a(this);
    }

    @UiThread
    public void a(long j) {
        b.a().b(this);
        long andSet = this.b.getAndSet(0);
        long andSet2 = this.c.getAndSet(0);
        long andSet3 = this.d.getAndSet(0);
        long andSet4 = this.e.getAndSet(0);
        a(j, "wifi", andSet, andSet2);
        a(j, "mobile", andSet3, andSet4);
    }

    private static boolean b(DataUsageEvent dataUsageEvent) {
        if ("found_media".equals(dataUsageEvent.e)) {
            return true;
        }
        URI uri = dataUsageEvent.b;
        if (uri == null || !uri.getHost().endsWith(".twitter.com")) {
            return false;
        }
        return dataUsageEvent.b.getPath().contains("/foundmedia/");
    }

    private static void a(long j, String str, long j2, long j3) {
        String str2 = v.a() ? "trend" : "category";
        bbu.a(((PerformanceScribeLog) new PerformanceScribeLog("found_media_data_usage", j).b(new String[]{TtmlNode.ANONYMOUS_REGION_ID, str, "found_media", str2, "rxbytes"})).a(j2));
        bbu.a(((PerformanceScribeLog) new PerformanceScribeLog("found_media_data_usage", j).b(new String[]{TtmlNode.ANONYMOUS_REGION_ID, str, "found_media", str2, "txbytes"})).a(j3));
    }
}
