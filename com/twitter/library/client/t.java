package com.twitter.library.client;

import android.content.Context;
import com.twitter.util.m;

/* compiled from: Twttr */
public class t {
    public static synchronized long a(Context context, String str) {
        long j;
        synchronized (t.class) {
            l b = b(context, str);
            j = b.getLong("read_", 0);
            if (j == 0) {
                j = m.b();
                b.a().a("read_", j).apply();
            }
        }
        return j;
    }

    public static synchronized void a(Context context, String str, long j) {
        synchronized (t.class) {
            b(context, str).a().a("read_", j).apply();
        }
    }

    public static synchronized boolean b(Context context, String str, long j) {
        boolean z;
        synchronized (t.class) {
            l b = b(context, str);
            if (j > b.getLong("read_", 0)) {
                b.a().a("read_", j).apply();
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    private static l b(Context context, String str) {
        return new l(context, str, "activity");
    }
}
