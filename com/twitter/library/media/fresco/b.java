package com.twitter.library.media.fresco;

import android.content.Context;
import com.facebook.cache.disk.h;
import cvi;

/* compiled from: Twttr */
public class b {
    public static h a(Context context) {
        long j;
        long j2;
        long j3 = 5242880;
        if ((cvi.a(context) != null ? 1 : null) != null) {
            j = 104857600;
            j2 = 26214400;
        } else {
            j = 10485760;
            j2 = 5242880;
            j3 = 2097152;
        }
        return h.j().a(new c(context)).a("image_cache").a(j).b(j2).c(j3).a();
    }
}
