package com.twitter.model.url;

import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class UnwrappedTcoLinkResponse {
    public static final long a;
    public final String b;
    public final String c;
    public final List<String> d;
    public final ResolutionStatus e;
    public final long f;

    /* compiled from: Twttr */
    public enum ResolutionStatus {
        INVALID,
        VALID,
        UNSAFE,
        TRANSIENT_ERROR,
        UNKNOWN
    }

    static {
        a = TimeUnit.DAYS.toMillis(1);
    }

    public UnwrappedTcoLinkResponse(String str, ResolutionStatus resolutionStatus, String str2, List<String> list, Long l) {
        this.b = str;
        this.e = resolutionStatus;
        this.c = str2;
        this.d = list;
        long min = (l == null || l.longValue() < 0) ? a : Math.min(l.longValue(), a);
        this.f = min;
    }
}
