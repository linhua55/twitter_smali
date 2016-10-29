package com.twitter.android.provider;

import android.database.Cursor;
import chj;
import com.twitter.config.d;

/* compiled from: Twttr */
public class o extends chj<g> {
    public g a(Cursor cursor) {
        String string = cursor.getString(1);
        i a = new i().a(string).a(cursor.getLong(0));
        if (d.a("hashflags_in_composer_android_enabled")) {
            String substring = string.substring(1);
            if (com.twitter.library.view.d.a(substring)) {
                a.a(new com.twitter.library.view.d(substring, string.length()));
            }
        }
        return a.a();
    }
}
