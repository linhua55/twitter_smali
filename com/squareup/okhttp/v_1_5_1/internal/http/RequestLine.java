package com.squareup.okhttp.v_1_5_1.internal.http;

import java.net.Proxy.Type;
import java.net.URL;

/* compiled from: Twttr */
public final class RequestLine {
    private RequestLine() {
    }

    static String get(Request request, Type type, int i) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(request.method());
        stringBuilder.append(" ");
        if (includeAuthorityInRequestLine(request, type)) {
            stringBuilder.append(request.url());
        } else {
            stringBuilder.append(requestPath(request.url()));
        }
        stringBuilder.append(" ");
        stringBuilder.append(version(i));
        return stringBuilder.toString();
    }

    private static boolean includeAuthorityInRequestLine(Request request, Type type) {
        return !request.isHttps() && type == Type.HTTP;
    }

    public static String requestPath(URL url) {
        String file = url.getFile();
        if (file == null) {
            return "/";
        }
        if (file.startsWith("/")) {
            return file;
        }
        return "/" + file;
    }

    public static String version(int i) {
        return i == 1 ? "HTTP/1.1" : "HTTP/1.0";
    }
}
