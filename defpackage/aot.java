package defpackage;

import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;

/* compiled from: Twttr */
/* renamed from: aot */
class aot implements LoaderCallbacks<Cursor> {
    final /* synthetic */ aos a;

    aot(aos aos) {
        this.a = aos;
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return (Loader) this.a.c.b();
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        this.a.a(cursor);
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        this.a.a(null);
    }
}
