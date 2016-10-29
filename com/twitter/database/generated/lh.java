package com.twitter.database.generated;

import android.content.ContentValues;
import defpackage.azn;

/* compiled from: Twttr */
final class lh implements azn {
    private final ContentValues a;

    lh(ContentValues contentValues) {
        this.a = contentValues;
    }

    public azn a(long j) {
        this.a.put("ad_id", Long.valueOf(j));
        return this;
    }

    public azn b(long j) {
        this.a.put("tweet_id", Long.valueOf(j));
        return this;
    }

    public azn c(long j) {
        this.a.put("tag", Long.valueOf(j));
        return this;
    }

    public azn a(String str) {
        this.a.put("type", str);
        return this;
    }

    public azn d(long j) {
        this.a.put("sort_index", Long.valueOf(j));
        return this;
    }

    public azn b(String str) {
        if (str == null) {
            this.a.putNull("slot_id");
        } else {
            this.a.put("slot_id", str);
        }
        return this;
    }

    public azn c(String str) {
        if (str == null) {
            this.a.putNull("assigned_slot_id");
        } else {
            this.a.put("assigned_slot_id", str);
        }
        return this;
    }

    public azn e(long j) {
        this.a.put("expiration_interval_secs", Long.valueOf(j));
        return this;
    }

    public azn f(long j) {
        this.a.put("last_seen_timestamp", Long.valueOf(j));
        return this;
    }

    public azn g(long j) {
        this.a.put("created_at", Long.valueOf(j));
        return this;
    }
}
