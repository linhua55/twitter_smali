package com.twitter.android.moments.data;

import android.database.Cursor;
import asw;
import atf;
import cgu;
import com.twitter.android.moments.viewmodels.MomentModule;
import defpackage.aow;
import defpackage.asy;
import defpackage.cgt;

/* compiled from: Twttr */
public class y extends asw<cgu<MomentModule>> {
    public y(atf<aow, Cursor> atf_aow__android_database_Cursor) {
        super(new asy(atf_aow__android_database_Cursor));
    }

    protected cgu<MomentModule> a(Cursor cursor) {
        return new cgt(cursor, new x());
    }
}
