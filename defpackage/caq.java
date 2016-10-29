package defpackage;

import com.twitter.library.widget.tweet.content.DisplayMode;

/* compiled from: Twttr */
/* renamed from: caq */
/* synthetic */ class caq {
    static final /* synthetic */ int[] a;

    static {
        a = new int[DisplayMode.values().length];
        try {
            a[DisplayMode.FORWARD.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[DisplayMode.FULL.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[DisplayMode.COMPOSE.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[DisplayMode.CAROUSEL.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[DisplayMode.MOMENTS.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
    }
}
