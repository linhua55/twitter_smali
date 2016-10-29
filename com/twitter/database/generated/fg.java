package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.awu;

/* compiled from: Twttr */
final class fg implements awu {
    private final Cursor a;

    private fg(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
