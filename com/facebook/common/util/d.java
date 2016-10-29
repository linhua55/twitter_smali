package com.facebook.common.util;

import android.net.Uri;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class d {
    public static boolean a(@Nullable Uri uri) {
        String g = g(uri);
        return "https".equals(g) || "http".equals(g);
    }

    public static boolean b(@Nullable Uri uri) {
        return "file".equals(g(uri));
    }

    public static boolean c(@Nullable Uri uri) {
        return "content".equals(g(uri));
    }

    public static boolean d(@Nullable Uri uri) {
        return "asset".equals(g(uri));
    }

    public static boolean e(@Nullable Uri uri) {
        return "res".equals(g(uri));
    }

    public static boolean f(@Nullable Uri uri) {
        return "data".equals(g(uri));
    }

    @Nullable
    public static String g(@Nullable Uri uri) {
        return uri == null ? null : uri.getScheme();
    }
}
