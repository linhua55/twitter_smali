package com.twitter.android.provider;

import android.database.Cursor;
import chj;

/* compiled from: Twttr */
public class x extends chj<z> {
    public z a(Cursor cursor) {
        return new ab().b(cursor.getString(3).trim()).a(cursor.getString(2).trim()).a(cursor.getInt(5)).c(cursor.getString(4)).a(cursor.getLong(1)).b(cursor.getInt(6)).a();
    }
}
