package com.twitter.library.av.model;

import com.twitter.config.d;
import com.twitter.library.av.playback.bd;

/* compiled from: Twttr */
class b {
    b() {
    }

    long a() {
        return d.a("media_autoplay_view_threshold_content_ms", 3000);
    }

    long a(bd bdVar) {
        return Math.min((long) d.a("media_autoplay_view_threshold_content_ms", 3000), c(bdVar));
    }

    long b(bd bdVar) {
        return Math.min(com.twitter.library.av.control.d.a(bdVar, d.a("media_autoplay_view_threshold_content_ms", 3000)), c(bdVar));
    }

    long c(bd bdVar) {
        if (bdVar.c > 0) {
            return bdVar.c - 1000;
        }
        return 3000;
    }
}
