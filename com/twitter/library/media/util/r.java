package com.twitter.library.media.util;

import android.content.Context;
import com.twitter.platform.PlatformContext;
import com.twitter.util.concurrent.j;
import cvi;
import java.io.File;

/* compiled from: Twttr */
public class r {
    public static File a(Context context, long j) {
        File b = b(context, j);
        return (b == null || !b.exists()) ? null : b;
    }

    public static File b(Context context, long j) {
        File b = cvi.b(context);
        return b != null ? new File(b, j + "_header.jpg") : null;
    }

    public static boolean c(Context context, long j) {
        File b = b(context, j);
        return b != null && b.exists() && b.delete();
    }

    public static j<Boolean> d(Context context, long j) {
        return PlatformContext.f().e().c(b(context, j));
    }
}
