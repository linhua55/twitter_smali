package com.twitter.android.util;

import android.net.Uri;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
public class bv {
    private static final List<String> a;

    static {
        a = Arrays.asList(new String[]{"r", "f", "e"});
    }

    public static boolean a(String str) {
        return a.contains(str);
    }

    public static long a(Uri uri) {
        long j = -1;
        if (uri != null) {
            String queryParameter = uri.getQueryParameter("c");
            if (queryParameter != null) {
                try {
                    j = Long.parseLong(queryParameter);
                } catch (NumberFormatException e) {
                }
            }
        }
        return j;
    }

    public static String b(Uri uri) {
        return uri != null ? uri.getQueryParameter("v") : null;
    }
}
