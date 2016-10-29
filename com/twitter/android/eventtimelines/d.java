package com.twitter.android.eventtimelines;

import android.net.Uri;

/* compiled from: Twttr */
public interface d {
    public static final Uri a;
    public static final Uri b;
    public static final Uri c;
    public static final Uri d;
    public static final Uri e;
    public static final Uri f;
    public static final Uri g;

    static {
        a = Uri.parse("twitter://events/commentary");
        b = Uri.parse("twitter://events/matches");
        c = Uri.parse("twitter://events/media");
        d = Uri.parse("twitter://events/photos");
        e = Uri.parse("twitter://events/videos");
        f = Uri.parse("twitter://events/default");
        g = Uri.parse("twitter://events/cast");
    }
}
