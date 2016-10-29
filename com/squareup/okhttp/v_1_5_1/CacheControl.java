package com.squareup.okhttp.v_1_5_1;

import com.squareup.okhttp.v_1_5_1.internal.http.HeaderParser;
import com.squareup.okhttp.v_1_5_1.internal.http.Headers;

/* compiled from: Twttr */
public final class CacheControl {
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;

    private CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, int i3, int i4, boolean z5) {
        this.noCache = z;
        this.noStore = z2;
        this.maxAgeSeconds = i;
        this.sMaxAgeSeconds = i2;
        this.isPublic = z3;
        this.mustRevalidate = z4;
        this.maxStaleSeconds = i3;
        this.minFreshSeconds = i4;
        this.onlyIfCached = z5;
    }

    public boolean noCache() {
        return this.noCache;
    }

    public boolean noStore() {
        return this.noStore;
    }

    public int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public boolean isPublic() {
        return this.isPublic;
    }

    public boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public static CacheControl parse(Headers headers) {
        boolean z = false;
        boolean z2 = false;
        int i = -1;
        int i2 = -1;
        boolean z3 = false;
        boolean z4 = false;
        int i3 = -1;
        int i4 = -1;
        boolean z5 = false;
        int i5 = 0;
        while (i5 < headers.size()) {
            if (headers.name(i5).equalsIgnoreCase("Cache-Control") || headers.name(i5).equalsIgnoreCase("Pragma")) {
                String value = headers.value(i5);
                boolean z6 = z;
                int i6 = 0;
                while (i6 < value.length()) {
                    String str;
                    int skipUntil = HeaderParser.skipUntil(value, i6, "=,;");
                    String trim = value.substring(i6, skipUntil).trim();
                    if (skipUntil == value.length() || value.charAt(skipUntil) == ',' || value.charAt(skipUntil) == ';') {
                        i6 = skipUntil + 1;
                        str = null;
                    } else {
                        i6 = HeaderParser.skipWhitespace(value, skipUntil + 1);
                        String trim2;
                        if (i6 >= value.length() || value.charAt(i6) != '\"') {
                            skipUntil = HeaderParser.skipUntil(value, i6, ",;");
                            trim2 = value.substring(i6, skipUntil).trim();
                            i6 = skipUntil;
                            str = trim2;
                        } else {
                            i6++;
                            skipUntil = HeaderParser.skipUntil(value, i6, "\"");
                            trim2 = value.substring(i6, skipUntil);
                            i6 = skipUntil + 1;
                            str = trim2;
                        }
                    }
                    if ("no-cache".equalsIgnoreCase(trim)) {
                        z6 = true;
                    } else if ("no-store".equalsIgnoreCase(trim)) {
                        z2 = true;
                    } else if ("max-age".equalsIgnoreCase(trim)) {
                        i = HeaderParser.parseSeconds(str);
                    } else if ("s-maxage".equalsIgnoreCase(trim)) {
                        i2 = HeaderParser.parseSeconds(str);
                    } else if ("public".equalsIgnoreCase(trim)) {
                        z3 = true;
                    } else if ("must-revalidate".equalsIgnoreCase(trim)) {
                        z4 = true;
                    } else if ("max-stale".equalsIgnoreCase(trim)) {
                        i3 = HeaderParser.parseSeconds(str);
                    } else if ("min-fresh".equalsIgnoreCase(trim)) {
                        i4 = HeaderParser.parseSeconds(str);
                    } else if ("only-if-cached".equalsIgnoreCase(trim)) {
                        z5 = true;
                    }
                }
                z = z6;
            }
            i5++;
        }
        return new CacheControl(z, z2, i, i2, z3, z4, i3, i4, z5);
    }
}
