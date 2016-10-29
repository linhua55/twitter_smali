package com.twitter.database.generated;

import android.content.ContentValues;
import com.twitter.database.lru.schema.h;

/* compiled from: Twttr */
final class m implements h {
    private final ContentValues a;

    m(ContentValues contentValues) {
        this.a = contentValues;
    }

    public h a(int i) {
        this.a.put("category_id", Integer.valueOf(i));
        return this;
    }

    public h b(int i) {
        this.a.put("version", Integer.valueOf(i));
        return this;
    }

    public h a(long j) {
        this.a.put("last_update_timestamp", Long.valueOf(j));
        return this;
    }

    public h b(long j) {
        this.a.put("expiry_timestamp", Long.valueOf(j));
        return this;
    }

    public h a(String str) {
        this.a.put("key", str);
        return this;
    }

    public h a(byte[] bArr) {
        this.a.put("value", bArr);
        return this;
    }

    public h c(long j) {
        this.a.put("data_size_bytes", Long.valueOf(j));
        return this;
    }
}
