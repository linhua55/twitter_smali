package com.twitter.database.generated;

import android.content.ContentValues;
import defpackage.avq;

/* compiled from: Twttr */
final class co implements avq {
    private final ContentValues a;

    co(ContentValues contentValues) {
        this.a = contentValues;
    }

    public avq a(long j) {
        this.a.put("community_id", Long.valueOf(j));
        return this;
    }

    public avq b(long j) {
        this.a.put("updated_at", Long.valueOf(j));
        return this;
    }

    public avq a(String str) {
        if (str == null) {
            this.a.putNull("name");
        } else {
            this.a.put("name", str);
        }
        return this;
    }

    public avq b(String str) {
        if (str == null) {
            this.a.putNull("description");
        } else {
            this.a.put("description", str);
        }
        return this;
    }

    public avq c(String str) {
        if (str == null) {
            this.a.putNull("image_url");
        } else {
            this.a.put("image_url", str);
        }
        return this;
    }
}
