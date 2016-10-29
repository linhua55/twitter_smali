package com.twitter.model.av;

import com.twitter.util.collection.r;
import com.twitter.util.object.e;
import java.util.Map;

/* compiled from: Twttr */
public enum VideoCtaType {
    DOWNLOAD_APP,
    OPEN_URL,
    WATCH_NOW,
    UNKNOWN;
    
    private static final Map<String, VideoCtaType> e;

    static {
        e = (Map) r.d().b("cta_download_app", DOWNLOAD_APP).b("cta_open_url", OPEN_URL).b("cta_watch_now", WATCH_NOW).b("visit_site", OPEN_URL).b("watch_now", WATCH_NOW).q();
    }

    public static VideoCtaType a(String str) {
        return (VideoCtaType) e.b(e.get(str), UNKNOWN);
    }
}
