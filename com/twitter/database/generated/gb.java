package com.twitter.database.generated;

import android.content.ContentValues;
import com.twitter.util.serialization.m;
import defpackage.axe;
import java.util.List;

/* compiled from: Twttr */
final class gb implements axe {
    private final ContentValues a;

    gb(ContentValues contentValues) {
        this.a = contentValues;
    }

    public axe a(long j) {
        this.a.put(TtmlNode.ATTR_ID, Long.valueOf(j));
        return this;
    }

    public axe a(String str) {
        if (str == null) {
            this.a.putNull("title");
        } else {
            this.a.put("title", str);
        }
        return this;
    }

    public axe b(String str) {
        if (str == null) {
            this.a.putNull("genre");
        } else {
            this.a.put("genre", str);
        }
        return this;
    }

    public axe c(String str) {
        if (str == null) {
            this.a.putNull("primary_hashtag");
        } else {
            this.a.put("primary_hashtag", str);
        }
        return this;
    }

    public axe a(List<String> list) {
        if (list == null) {
            this.a.putNull("other_hashtags");
        } else {
            this.a.put("other_hashtags", m.a(list, a.a));
        }
        return this;
    }

    public axe b(List<String> list) {
        if (list == null) {
            this.a.putNull("cast_screen_names");
        } else {
            this.a.put("cast_screen_names", m.a(list, a.a));
        }
        return this;
    }
}
