package com.twitter.database.generated;

import android.database.Cursor;
import com.twitter.database.schema.l;

/* compiled from: Twttr */
final class ag implements l {
    private final Cursor a;

    private ag(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public String b() {
        return this.a.getString(1);
    }

    public int bd_() {
        return this.a.getInt(2);
    }

    public int c() {
        return this.a.getInt(3);
    }

    public Integer be_() {
        if (this.a.isNull(9)) {
            return null;
        }
        return Integer.valueOf(this.a.getInt(9));
    }

    public int d() {
        return this.a.getInt(10);
    }

    public boolean e() {
        return this.a.getInt(11) == 1;
    }

    public String f() {
        return this.a.getString(12);
    }

    public int g() {
        return this.a.getInt(13);
    }

    public boolean h() {
        return this.a.getInt(14) == 1;
    }
}
