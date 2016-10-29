package com.twitter.android.communities;

import android.support.v7.recyclerview.BuildConfig;
import java.net.URI;

/* compiled from: Twttr */
public class ai {
    public static final ai a;
    public final long b;
    public final String c;
    public final String d;
    public final URI e;
    public final boolean f;

    static {
        a = (ai) new aj().a(-1).a(BuildConfig.VERSION_NAME).b(BuildConfig.VERSION_NAME).a(URI.create(BuildConfig.VERSION_NAME)).q();
    }

    public ai(long j, String str, String str2, URI uri, boolean z) {
        this.b = j;
        this.c = str;
        this.d = str2;
        this.e = uri;
        this.f = z;
    }
}
