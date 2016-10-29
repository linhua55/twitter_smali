package com.twitter.database.generated;

import android.content.ContentValues;
import defpackage.aus;

/* compiled from: Twttr */
final class ba implements aus {
    private final ContentValues a;

    ba(ContentValues contentValues) {
        this.a = contentValues;
    }

    public aus a(int i) {
        this.a.put("type", Integer.valueOf(i));
        return this;
    }

    public aus b(int i) {
        this.a.put("data_type", Integer.valueOf(i));
        return this;
    }

    public aus a(long j) {
        this.a.put("data_id", Long.valueOf(j));
        return this;
    }

    public aus b(long j) {
        this.a.put("sort_id", Long.valueOf(j));
        return this;
    }

    public aus c(long j) {
        this.a.put("max_position", Long.valueOf(j));
        return this;
    }

    public aus d(long j) {
        this.a.put("min_position", Long.valueOf(j));
        return this;
    }

    public aus a(boolean z) {
        this.a.put("is_last", Boolean.valueOf(z));
        return this;
    }

    public aus b(boolean z) {
        this.a.put("is_unread", Boolean.valueOf(z));
        return this;
    }
}
