package com.twitter.media.util;

import android.media.MediaExtractor;
import android.os.Build.VERSION;
import com.twitter.config.d;
import defpackage.bbn;

/* compiled from: Twttr */
public class r {
    public static boolean a() {
        return VERSION.SDK_INT >= 18 && d.a("video_compose_import_method_java_enabled");
    }

    public static int a(MediaExtractor mediaExtractor, String str) {
        int i;
        int trackCount = mediaExtractor.getTrackCount();
        for (i = 0; i < trackCount; i++) {
            String string = mediaExtractor.getTrackFormat(i).getString("mime");
            if (string != null && string.startsWith(str)) {
                return i;
            }
        }
        StringBuilder stringBuilder = new StringBuilder("cannot find track. type=");
        stringBuilder.append(str).append(" [");
        for (i = 0; i < trackCount; i++) {
            if (i > 0) {
                stringBuilder.append(", ");
            }
            stringBuilder.append(mediaExtractor.getTrackFormat(i).getString("mime"));
        }
        stringBuilder.append(']');
        bbn.a(new IllegalStateException(stringBuilder.toString()));
        return -1;
    }
}
