package com.twitter.library.av.control;

import com.twitter.library.av.playback.bd;

/* compiled from: Twttr */
public class d {
    public static boolean a() {
        return com.twitter.config.d.a("android_media_playback_skip_ad_enabled");
    }

    public static long a(bd bdVar, long j) {
        if (a() && ((long) c()) <= bdVar.c) {
            return (long) (d() + e());
        }
        return j;
    }

    public static c b() {
        return new c(a(), c(), d());
    }

    private static int c() {
        return com.twitter.config.d.a("android_media_playback_skip_ad_duration_requirement_ms", 7000);
    }

    private static int d() {
        return com.twitter.config.d.a("android_media_playback_skip_ad_watch_requirement_ms", 0);
    }

    private static int e() {
        return com.twitter.config.d.a("android_media_playback_skip_ad_view_threshold_ms", 3000);
    }
}
