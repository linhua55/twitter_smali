package com.twitter.library.provider;

import android.net.Uri;

/* compiled from: Twttr */
public interface bl {
    public static final Uri a;

    static {
        a = Uri.parse("content://" + GlobalDatabaseProvider.a + "/" + "activity_states");
    }
}
