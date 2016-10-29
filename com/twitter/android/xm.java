package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import cdj;
import com.twitter.library.provider.dh;
import com.twitter.library.provider.di;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class xm implements LoaderCallbacks<Cursor> {
    private final Context a;
    private final LoaderManager b;
    private final xn c;
    private final int d;
    private long e;
    private String f;
    private long g;

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public xm(Context context, LoaderManager loaderManager, xn xnVar, int i) {
        this.a = context;
        this.b = loaderManager;
        this.c = xnVar;
        this.d = i;
    }

    public void a(long j, String str, long j2) {
        this.e = j;
        this.f = str;
        this.g = j2;
        this.b.initLoader(this.d, null, this);
    }

    public void b(long j, String str, long j2) {
        this.e = j;
        this.f = str;
        this.g = j2;
        this.b.restartLoader(this.d, null, this);
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        Uri build;
        String str;
        String[] strArr;
        if (this.f != null) {
            build = dh.a.buildUpon().appendQueryParameter("ownerId", String.valueOf(this.g)).build();
            str = "username=? COLLATE NOCASE";
            strArr = new String[]{this.f};
        } else {
            build = dh.b.buildUpon().appendEncodedPath(String.valueOf(this.e)).appendQueryParameter("ownerId", String.valueOf(this.g)).build();
            strArr = null;
            str = null;
        }
        return new bu(this.a, build, cdj.a, str, strArr, null);
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        TwitterUser twitterUser = null;
        if (cursor != null && cursor.moveToFirst()) {
            twitterUser = di.a(cursor);
        }
        this.c.c(twitterUser);
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }
}
