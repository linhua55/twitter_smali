package com.twitter.database.generated;

import android.content.ContentValues;
import ckb;
import com.twitter.database.model.v;
import com.twitter.util.serialization.m;
import defpackage.bav;

/* compiled from: Twttr */
final class oc implements bav {
    private final ContentValues a;

    public /* synthetic */ v b(long j) {
        return a(j);
    }

    oc(ContentValues contentValues) {
        this.a = contentValues;
    }

    public bav a(long j) {
        this.a.put("_id", Long.valueOf(j));
        return this;
    }

    public bav c(long j) {
        this.a.put("category_id", Long.valueOf(j));
        return this;
    }

    public bav a(ckb ckb) {
        if (ckb == null) {
            this.a.putNull("icon_image");
        } else {
            this.a.put("icon_image", m.a(ckb, ckb.a));
        }
        return this;
    }

    public bav a(String str) {
        this.a.put("name", str);
        return this;
    }

    public bav d(long j) {
        this.a.put("annotation_id", Long.valueOf(j));
        return this;
    }

    public bav a(boolean z) {
        this.a.put("is_featured", Boolean.valueOf(z));
        return this;
    }

    public bav b(boolean z) {
        this.a.put("is_promoted", Boolean.valueOf(z));
        return this;
    }
}
