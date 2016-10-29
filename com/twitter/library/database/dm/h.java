package com.twitter.library.database.dm;

import android.content.ContentValues;
import com.twitter.library.database.dm.ShareHistoryTable.Type;

/* compiled from: Twttr */
public class h {
    private String a;
    private Boolean b;
    private Type c;
    private long d;
    private long e;

    public h() {
        this.d = -1;
        this.e = -1;
    }

    public h a(String str) {
        this.a = str;
        return this;
    }

    public h a(boolean z) {
        this.b = Boolean.valueOf(z);
        return this;
    }

    public h a(Type type) {
        this.c = type;
        return this;
    }

    public h a(long j) {
        this.d = j;
        return this;
    }

    public h b(long j) {
        this.e = j;
        return this;
    }

    public ContentValues a() {
        ContentValues contentValues = new ContentValues();
        if (this.a != null) {
            contentValues.put("reference_id", this.a);
        }
        if (this.b != null) {
            contentValues.put("is_conversation", this.b);
        }
        if (this.c != null) {
            contentValues.put("type", Integer.valueOf(this.c.a()));
        }
        if (this.d > 0) {
            contentValues.put("event_id", Long.valueOf(this.d));
        }
        if (this.e > 0) {
            contentValues.put("tweet_id", Long.valueOf(this.e));
        }
        return contentValues;
    }
}
