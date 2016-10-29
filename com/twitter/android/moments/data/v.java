package com.twitter.android.moments.data;

import android.database.Cursor;
import asw;
import atf;
import cgu;
import com.twitter.model.moments.ab;
import defpackage.aow;
import defpackage.cgt;

/* compiled from: Twttr */
public class v extends asw<cgu<ab>> {
    public v(atf<aow, Cursor> atf_aow__android_database_Cursor) {
        super(atf_aow__android_database_Cursor);
    }

    protected cgu<ab> a(Cursor cursor) {
        return new cgt(cursor, new t());
    }
}
