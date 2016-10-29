package com.twitter.app.common.list;

import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import bdl;
import cgu;
import chk;
import com.twitter.util.object.ObjectUtils;
import defpackage.cgq;

/* compiled from: Twttr */
class a implements LoaderCallbacks<Cursor> {
    final /* synthetic */ TwitterListFragment a;

    a(TwitterListFragment twitterListFragment) {
        this.a = twitterListFragment;
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return this.a.q_();
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        bdl az = this.a.az();
        if (cursor == null) {
            this.a.S();
        } else if (az instanceof chk) {
            this.a.a(((chk) ObjectUtils.a(az)).a(cursor));
        } else {
            this.a.a((cgu) ObjectUtils.a(new cgq(cursor)));
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        this.a.at();
    }
}
