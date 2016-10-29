package com.twitter.internal.android.service;

import android.os.SystemClock;
import com.twitter.util.m;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Twttr */
public class d {
    private final Map<String, Long> a;
    private final Map<String, Long> b;

    public d() {
        this.a = new ConcurrentHashMap();
        this.b = new ConcurrentHashMap();
    }

    public long a() {
        return b("blocking", -1);
    }

    public long a(String str, long j) {
        if (str == null) {
            return j;
        }
        Long l = (Long) this.a.get(str);
        return l != null ? (m.b() - SystemClock.uptimeMillis()) + l.longValue() : j;
    }

    public long b(String str, long j) {
        if (str == null) {
            return j;
        }
        Long l = (Long) this.b.get(str);
        return l != null ? l.longValue() : j;
    }

    public void a(String str) {
        if (str != null) {
            this.a.put(str, Long.valueOf(SystemClock.uptimeMillis()));
        }
    }

    public void b(String str) {
        if (str != null) {
            Long l = (Long) this.a.get(str);
            if (l != null) {
                this.b.put(str, Long.valueOf(SystemClock.uptimeMillis() - l.longValue()));
            }
        }
    }
}
