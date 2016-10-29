package com.twitter.database.generated;

import android.database.Cursor;
import com.twitter.database.schema.h;

/* compiled from: Twttr */
final class y implements h {
    private final Cursor a;

    private y(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public String b() {
        return this.a.getString(1);
    }

    public Integer be_() {
        if (this.a.isNull(2)) {
            return null;
        }
        return Integer.valueOf(this.a.getInt(2));
    }

    public int d() {
        return this.a.getInt(3);
    }

    public boolean e() {
        return this.a.getInt(4) == 1;
    }

    public String f() {
        return this.a.getString(5);
    }

    public int g() {
        return this.a.getInt(6);
    }

    public boolean h() {
        return this.a.getInt(7) == 1;
    }
}
