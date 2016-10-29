package com.twitter.android.moments.ui.animation;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import cfb;
import com.twitter.util.h;
import cvi;
import java.io.File;
import java.net.URL;
import rx.o;

/* compiled from: Twttr */
public class i {
    private static final String a;
    private static final String b;
    private final Context c;

    static {
        a = i.class.getSimpleName();
        b = i.class.getSimpleName();
    }

    public static i a(Context context) {
        return new i(context);
    }

    @VisibleForTesting
    i(Context context) {
        this.c = context.getApplicationContext();
    }

    public o<File> a(String str, String str2, String str3) {
        return a(str) ? a(str3, str2).f(new j(this, str)) : o.c();
    }

    private boolean a(String str) {
        try {
            return "ton.twimg.com".equals(new URL(str).getHost());
        } catch (Throwable e) {
            cfb.c(b, "Invalid url", e);
            return false;
        }
    }

    @VisibleForTesting
    o<File> a(String str, String str2) {
        return o.b(b(str2, str));
    }

    private File b(String str, String str2) {
        h.c();
        File file = new File(str + File.separator + str2);
        cvi.e(file);
        return file;
    }

    @VisibleForTesting
    o<File> a(Context context, String str, File file) {
        return new l(context, a, file).a_(str);
    }
}
