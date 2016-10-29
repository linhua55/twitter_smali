package defpackage;

import android.content.UriMatcher;
import android.net.Uri;
import com.twitter.model.core.cr;

/* compiled from: Twttr */
/* renamed from: cpg */
public class cpg {
    private static final UriMatcher a;

    static {
        a = new UriMatcher(-1);
        a.addURI("*", "*/timelines/*", 1);
    }

    public static String a(long j) {
        return "custom-" + j;
    }

    public static long a(Iterable<cr> iterable) {
        for (cr crVar : iterable) {
            Uri parse = Uri.parse(crVar.C);
            if (a.match(parse) == 1) {
                try {
                    return Long.valueOf(parse.getLastPathSegment()).longValue();
                } catch (NumberFormatException e) {
                    return -1;
                }
            }
        }
        return -1;
    }
}
