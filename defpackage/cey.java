package defpackage;

import java.util.regex.Pattern;

/* compiled from: Twttr */
/* renamed from: cey */
public class cey {
    public static final Pattern a;
    public static final Pattern b;
    public static final Pattern c;
    public static final Pattern d;
    public static final Pattern e;
    public static final Pattern f;

    static {
        a = Pattern.compile("\\w{1,15}");
        b = Pattern.compile("@?" + a);
        c = Pattern.compile("@" + a);
        d = Pattern.compile("^\\d{7,}$");
        e = Pattern.compile("^https?://twitter\\.com(/#!)?/\\w+/status/\\d+$");
        f = Pattern.compile("^https?://twitter\\.com(/#!)?/\\w+/timelines/\\d+$");
    }
}
