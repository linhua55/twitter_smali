package com.twitter.library.media.manager;

import android.support.v7.widget.ListPopupWindow;
import com.google.android.exoplayer.MediaFormat;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.media.request.d;
import com.twitter.util.j;
import com.twitter.util.math.Size;
import defpackage.cqf;

/* compiled from: Twttr */
public class UserImageRequest {
    private static int a;
    private static int b;
    private static int c;
    private static final d d;

    static {
        d = new ak();
    }

    private UserImageRequest() {
    }

    public static b a(String str) {
        return a(str, Size.b);
    }

    public static b a(String str, int i) {
        return a(str, Size.a(a(i)));
    }

    private static b a(String str, Size size) {
        return a.a(str, size).a(d).a("user");
    }

    public static void a(int i, int i2, int i3) {
        cqf.a(UserImageRequest.class);
        a = i;
        b = i2;
        c = i3;
    }

    public static int a(int i) {
        cqf.a(UserImageRequest.class);
        switch (i) {
            case -3:
                if (!j.e() || c != 0) {
                    return c;
                }
                throw new IllegalStateException("NORMAL size has not been configured");
            case ListPopupWindow.WRAP_CONTENT /*-2*/:
                if (!j.e() || b != 0) {
                    return b;
                }
                throw new IllegalStateException("SMALL size has not been configured");
            case MediaFormat.NO_VALUE /*-1*/:
                if (!j.e() || a != 0) {
                    return a;
                }
                throw new IllegalStateException("MINI size has not been configured");
            default:
                return i;
        }
    }
}
