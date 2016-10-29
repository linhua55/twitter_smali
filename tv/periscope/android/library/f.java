package tv.periscope.android.library;

import android.net.Uri;
import android.net.Uri.Builder;

/* compiled from: Twttr */
public final class f {
    public static Uri a(String str) {
        return new Builder().scheme("pscp").authority("broadcast").appendPath(str).build();
    }
}
