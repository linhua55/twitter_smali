package com.twitter.android.revenue;

import android.database.Cursor;
import ccc;
import chj;
import defpackage.ccf;

/* compiled from: Twttr */
public class c extends chj<a> {
    public a a(Cursor cursor) {
        long j = cursor.getLong(ccf.b);
        long j2 = cursor.getLong(ccf.f);
        String string = cursor.getString(ccf.d);
        String string2 = cursor.getString(ccf.e);
        long j3 = cursor.getLong(ccf.g);
        long j4 = cursor.getLong(ccf.h);
        long j5 = cursor.getLong(ccf.i);
        if ("tweet".equals(cursor.getString(ccf.c))) {
            return new ag().a(ccc.a.a(cursor)).a(j).b(j2).a(string).b(string2).c(j3).d(j4).e(j5).c();
        }
        return null;
    }
}
