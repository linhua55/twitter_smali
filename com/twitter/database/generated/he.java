package com.twitter.database.generated;

import android.content.ContentValues;
import com.twitter.model.core.MediaEntity;
import com.twitter.util.serialization.m;
import defpackage.axo;

/* compiled from: Twttr */
final class he implements axo {
    private final ContentValues a;

    he(ContentValues contentValues) {
        this.a = contentValues;
    }

    public axo a(String str) {
        this.a.put("event_id", str);
        return this;
    }

    public axo a(long j) {
        this.a.put("start_time", Long.valueOf(j));
        return this;
    }

    public axo b(long j) {
        this.a.put("end_time", Long.valueOf(j));
        return this;
    }

    public axo b(String str) {
        this.a.put("title", str);
        return this;
    }

    public axo c(String str) {
        this.a.put("hashtag", str);
        return this;
    }

    public axo a(MediaEntity mediaEntity) {
        this.a.put("media_entity", m.a(mediaEntity, MediaEntity.a));
        return this;
    }

    public axo c(long j) {
        this.a.put("updated_at", Long.valueOf(j));
        return this;
    }
}
