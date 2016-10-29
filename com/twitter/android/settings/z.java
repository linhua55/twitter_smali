package com.twitter.android.settings;

import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;

/* compiled from: Twttr */
public class z {
    public static boolean a(Session session) {
        UserSettings j = session.j();
        return j != null && j.k && session.d();
    }
}
