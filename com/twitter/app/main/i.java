package com.twitter.app.main;

import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import com.twitter.android.bu;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cu;

/* compiled from: Twttr */
class i implements LoaderCallbacks<Cursor> {
    final /* synthetic */ MainActivity a;

    private i(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return new bu(this.a, ck.a(cu.a, this.a.ab().g()), null, null, null, null);
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (cursor != null && cursor.moveToFirst()) {
            this.a.c(cursor.getInt(0));
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }
}
