package com.twitter.util;

import android.support.v7.recyclerview.BuildConfig;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.net.URLEncoder;

/* compiled from: Twttr */
public class n {
    public static String a(String str, String str2) {
        if (str != null) {
            return URLEncoder.encode(str, str2);
        }
        try {
            return BuildConfig.VERSION_NAME;
        } catch (Throwable e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public static String b(String str, String str2) {
        if (str != null) {
            return URLDecoder.decode(str, str2);
        }
        try {
            return BuildConfig.VERSION_NAME;
        } catch (Throwable e) {
            throw new RuntimeException(e.getMessage(), e);
        } catch (IllegalArgumentException e2) {
            return str;
        }
    }

    public static URI a(String str) {
        try {
            return new URI(str);
        } catch (URISyntaxException e) {
            int indexOf = str.indexOf(58);
            if (!(indexOf == -1 || indexOf == str.length())) {
                try {
                    return new URI(str.substring(0, indexOf), str.substring(indexOf + 1), null);
                } catch (URISyntaxException e2) {
                    return null;
                }
            }
            return null;
        }
    }

    public static URI a(URI uri, String str) throws URISyntaxException {
        return new URI(uri.getScheme(), uri.getUserInfo(), str, uri.getPort(), uri.getPath(), uri.getQuery(), uri.getFragment());
    }

    public static boolean b(String str) {
        return str != null && (str.startsWith("https://") || str.startsWith("http://"));
    }

    public static boolean c(String str) {
        return str != null && str.startsWith("https://");
    }

    public static URI a(String str, String str2, String str3) {
        try {
            if (!str.contains("://")) {
                str = String.format("%s://%s", new Object[]{str2, str});
            }
            URI uri = new URI(str);
            String host = uri.getHost();
            String path = uri.getPath();
            if (!path.isEmpty()) {
                str3 = path;
            }
            return new URI(str2, host, str3, null);
        } catch (URISyntaxException e) {
            return null;
        }
    }
}
