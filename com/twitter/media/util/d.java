package com.twitter.media.util;

import com.twitter.util.math.b;

/* compiled from: Twttr */
public class d {
    public static boolean a() {
        return com.twitter.config.d.a("media_async_upload_beyond_30_seconds_enabled");
    }

    public static int b() {
        if (a()) {
            return com.twitter.config.d.a("media_async_upload_max_video_duration", 30) * 1000;
        }
        return 30000;
    }

    public static int c() {
        return 1000;
    }

    public static e a(int i) {
        int min;
        if (a()) {
            min = Math.min(i, 45000);
        } else {
            min = Math.min(i, 20000);
        }
        int a = b.a(0, i - min, i);
        return new e(a, Math.min(min + a, i));
    }
}
