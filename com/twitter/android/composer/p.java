package com.twitter.android.composer;

import android.database.Cursor;
import com.twitter.util.concurrent.e;
import defpackage.ccc;

/* compiled from: Twttr */
class p implements e<Cursor> {
    final /* synthetic */ ComposerActivity a;

    p(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void a(Cursor cursor) {
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    this.a.a(ccc.a.a(cursor));
                }
                cursor.close();
            } catch (Throwable th) {
                cursor.close();
            }
        }
    }
}
