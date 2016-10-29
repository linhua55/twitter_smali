package com.squareup.okhttp.v_1_5_1.internal.http;

import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: Twttr */
public final class HttpMethod {
    public static final Set<String> METHODS;

    static {
        METHODS = new LinkedHashSet(Arrays.asList(new String[]{"OPTIONS", "GET", "HEAD", "POST", "PUT", "DELETE", "TRACE", "PATCH"}));
    }

    public static boolean invalidatesCache(String str) {
        return str.equals("POST") || str.equals("PATCH") || str.equals("PUT") || str.equals("DELETE");
    }

    public static boolean hasRequestBody(String str) {
        return str.equals("POST") || str.equals("PUT") || str.equals("PATCH");
    }

    private HttpMethod() {
    }
}
