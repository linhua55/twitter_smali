package com.twitter.database.generated;

import android.content.ContentValues;
import com.twitter.util.serialization.m;
import defpackage.ava;
import java.util.List;

/* compiled from: Twttr */
final class bm implements ava {
    private final ContentValues a;

    bm(ContentValues contentValues) {
        this.a = contentValues;
    }

    public ava a(long j) {
        this.a.put("alert_id", Long.valueOf(j));
        return this;
    }

    public ava b(long j) {
        this.a.put("updated_at", Long.valueOf(j));
        return this;
    }

    public ava a(String str) {
        this.a.put("title", str);
        return this;
    }

    public ava a(int i) {
        this.a.put("type", Integer.valueOf(i));
        return this;
    }

    public ava b(String str) {
        this.a.put(TtmlNode.TAG_REGION, str);
        return this;
    }

    public ava a(List<Long> list) {
        this.a.put("senders_ids", m.a(list, a.c));
        return this;
    }

    public ava a(boolean z) {
        this.a.put("is_muted", Boolean.valueOf(z));
        return this;
    }
}
