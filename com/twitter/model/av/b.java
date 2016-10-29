package com.twitter.model.av;

import android.webkit.MimeTypeMap;

/* compiled from: Twttr */
public class b {
    public static boolean a(AVMedia aVMedia) {
        return aVMedia != null && "ad".equals(aVMedia.b());
    }

    public static boolean a(String str) {
        return "mp4".equalsIgnoreCase(MimeTypeMap.getFileExtensionFromUrl(str));
    }

    public static boolean b(AVMedia aVMedia) {
        int g = aVMedia.g();
        if (g == 1 || g == 2) {
            return true;
        }
        return false;
    }
}
