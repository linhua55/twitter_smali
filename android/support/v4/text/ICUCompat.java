package android.support.v4.text;

import android.os.Build.VERSION;
import java.util.Locale;

/* compiled from: Twttr */
public final class ICUCompat {
    private static final ICUCompatImpl IMPL;

    /* compiled from: Twttr */
    interface ICUCompatImpl {
        String maximizeAndGetScript(Locale locale);
    }

    /* compiled from: Twttr */
    class ICUCompatImplBase implements ICUCompatImpl {
        ICUCompatImplBase() {
        }

        public String maximizeAndGetScript(Locale locale) {
            return null;
        }
    }

    /* compiled from: Twttr */
    class ICUCompatImplIcs implements ICUCompatImpl {
        ICUCompatImplIcs() {
        }

        public String maximizeAndGetScript(Locale locale) {
            return ICUCompatIcs.maximizeAndGetScript(locale);
        }
    }

    /* compiled from: Twttr */
    class ICUCompatImplLollipop implements ICUCompatImpl {
        ICUCompatImplLollipop() {
        }

        public String maximizeAndGetScript(Locale locale) {
            return ICUCompatApi23.maximizeAndGetScript(locale);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 21) {
            IMPL = new ICUCompatImplLollipop();
        } else if (i >= 14) {
            IMPL = new ICUCompatImplIcs();
        } else {
            IMPL = new ICUCompatImplBase();
        }
    }

    public static String maximizeAndGetScript(Locale locale) {
        return IMPL.maximizeAndGetScript(locale);
    }

    private ICUCompat() {
    }
}
