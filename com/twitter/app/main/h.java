package com.twitter.app.main;

import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import com.twitter.android.bu;
import com.twitter.library.provider.at;
import com.twitter.library.provider.bl;

/* compiled from: Twttr */
class h implements LoaderCallbacks<Cursor> {
    final /* synthetic */ MainActivity a;

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    h(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return new bu(this.a, Uri.withAppendedPath(bl.a, this.a.ab().e()), at.a, null, null, null);
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (cursor != null && cursor.moveToFirst()) {
            if (cursor.getInt(1) == 1) {
                this.a.a(this.a.o + 1);
            }
            this.a.b(cursor.getInt(3));
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }
}
