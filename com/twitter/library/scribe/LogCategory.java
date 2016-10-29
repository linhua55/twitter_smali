package com.twitter.library.scribe;

import com.twitter.config.d;
import com.twitter.util.collection.ar;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Twttr */
public enum LogCategory {
    CLIENT_APPLOG_UPLOAD_EVENT("client_applog_upload_event"),
    CLIENT_NETWORK_REQUEST_EVENT("client_network_request_event"),
    DDG_IMPRESSION("ddg_impression");
    
    private static final AtomicReference<Set<String>> d;
    private final String mName;

    static {
        d = new AtomicReference(ar.g());
        b();
    }

    private LogCategory(String str) {
        this.mName = str;
    }

    public String a() {
        return !((Set) d.get()).contains(this.mName) ? this.mName : "test_" + this.mName;
    }

    public static void b() {
        List<Object> c = d.c("thrift_logging_category_blacklist");
        ar d = ar.d();
        for (Object c2 : c) {
            d.c(c2);
        }
        d.set(d.q());
    }
}
