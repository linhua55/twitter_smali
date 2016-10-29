package com.twitter.library.av;

import com.twitter.config.d;

/* compiled from: Twttr */
public class ai {
    public static boolean a() {
        return d.a("dynamic_video_ads_global");
    }

    public static boolean b() {
        return a() && d.a("android_media_playback_watchmode_prefetch_ads_enabled");
    }
}
