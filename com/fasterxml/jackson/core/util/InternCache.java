package com.fasterxml.jackson.core.util;

import com.google.android.exoplayer.DefaultLoadControl;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Twttr */
public final class InternCache extends ConcurrentHashMap<String, String> {
    public static final InternCache a;
    private final Object lock;

    static {
        a = new InternCache();
    }

    private InternCache() {
        super(180, DefaultLoadControl.DEFAULT_HIGH_BUFFER_LOAD, 4);
        this.lock = new Object();
    }

    public String a(String str) {
        String str2 = (String) get(str);
        if (str2 != null) {
            return str2;
        }
        if (size() >= 180) {
            synchronized (this.lock) {
                if (size() >= 180) {
                    clear();
                }
            }
        }
        str2 = str.intern();
        put(str2, str2);
        return str2;
    }
}
