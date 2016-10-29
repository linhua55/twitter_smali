package com.twitter.android;

import android.app.Activity;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import com.twitter.library.provider.dh;

/* compiled from: Twttr */
class ml implements LoaderCallbacks<Cursor> {
    final /* synthetic */ Activity a;
    final /* synthetic */ ProfileActivity b;

    ml(ProfileActivity profileActivity, Activity activity) {
        this.b = profileActivity;
        this.a = activity;
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return new bu(this.a, dh.b.buildUpon().appendEncodedPath(String.valueOf(this.b.A)).appendQueryParameter("ownerId", String.valueOf(this.b.ab().g())).build(), mn.a, null, null, null).a(false);
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (cursor != null && cursor.moveToFirst()) {
            this.b.o(cursor.getInt(0));
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }
}
