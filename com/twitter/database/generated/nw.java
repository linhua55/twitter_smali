package com.twitter.database.generated;

import android.content.ContentValues;
import ckl;
import com.twitter.database.model.v;
import com.twitter.util.serialization.m;
import defpackage.bar;

/* compiled from: Twttr */
final class nw implements bar {
    private final ContentValues a;

    public /* synthetic */ v b(long j) {
        return a(j);
    }

    nw(ContentValues contentValues) {
        this.a = contentValues;
    }

    public bar a(long j) {
        this.a.put("_id", Long.valueOf(j));
        return this;
    }

    public bar c(long j) {
        this.a.put("annotation_id", Long.valueOf(j));
        return this;
    }

    public bar a(String str) {
        if (str == null) {
            this.a.putNull("dominant_color");
        } else {
            this.a.put("dominant_color", str);
        }
        return this;
    }

    public bar b(String str) {
        if (str == null) {
            this.a.putNull("background_color");
        } else {
            this.a.put("background_color", str);
        }
        return this;
    }

    public bar c(String str) {
        if (str == null) {
            this.a.putNull("variant_name");
        } else {
            this.a.put("variant_name", str);
        }
        return this;
    }

    public bar d(long j) {
        this.a.put("category_annotation_id", Long.valueOf(j));
        return this;
    }

    public bar a(ckl ckl) {
        this.a.put("variants", m.a(ckl, ckl.a));
        return this;
    }

    public bar e(long j) {
        this.a.put("sticker_set_annotation_id", Long.valueOf(j));
        return this;
    }

    public bar f(long j) {
        this.a.put("variant_item_id", Long.valueOf(j));
        return this;
    }

    public bar d(String str) {
        this.a.put("type", str);
        return this;
    }

    public bar g(long j) {
        this.a.put("start_time", Long.valueOf(j));
        return this;
    }

    public bar h(long j) {
        this.a.put("end_time", Long.valueOf(j));
        return this;
    }

    public bar i(long j) {
        this.a.put("last_modified_time", Long.valueOf(j));
        return this;
    }

    public bar a(boolean z) {
        this.a.put("available_for_creation", Boolean.valueOf(z));
        return this;
    }

    public bar j(long j) {
        this.a.put("author_id", Long.valueOf(j));
        return this;
    }

    public bar e(String str) {
        this.a.put("name", str);
        return this;
    }
}
