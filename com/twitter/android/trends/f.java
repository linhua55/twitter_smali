package com.twitter.android.trends;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.client.l;
import java.util.Locale;

/* compiled from: Twttr */
public class f {
    private static l a;

    public static boolean a(Context context, Session session, Locale locale) {
        if (locale != null) {
            l a = a(context, session);
            String string = a.getString("lang", null);
            String string2 = a.getString("country", null);
            if (string != null && string.equals(locale.getLanguage()) && string2 != null && string2.equals(locale.getCountry())) {
                return false;
            }
        }
        return true;
    }

    public static void a(Context context, Session session, com.twitter.library.api.search.f fVar) {
        a(context, session).a().a("lang", fVar.g()).a("country", fVar.h()).apply();
    }

    static l a(Context context, Session session) {
        if (a == null) {
            return new l(context, session.e(), "trend_loc_prefs");
        }
        return a;
    }
}
