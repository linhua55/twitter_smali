package defpackage;

import android.net.Uri;

/* compiled from: Twttr */
/* renamed from: bzj */
public abstract class bzj {
    public static Uri a(Uri uri, Uri uri2) {
        return uri2.buildUpon().appendEncodedPath(uri.getAuthority() + uri.getPath()).build();
    }
}
