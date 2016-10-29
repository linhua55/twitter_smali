package defpackage;

import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import aop;
import aov;
import com.twitter.android.bu;
import com.twitter.util.object.g;

/* compiled from: Twttr */
/* renamed from: aos */
public class aos extends aop<Cursor> implements apa {
    private final int a;
    private final LoaderManager b;
    private final g<bu> c;
    private final LoaderCallbacks<Cursor> d;

    public aos(LoaderManager loaderManager, int i, g<bu> gVar) {
        this.d = new aot(this);
        this.b = loaderManager;
        this.a = i;
        this.c = gVar;
    }

    public void a(aov<Cursor> aov_android_database_Cursor) {
        super.a(aov_android_database_Cursor);
        this.b.initLoader(this.a, null, this.d);
    }

    public void a() {
        this.b.restartLoader(this.a, null, this.d);
    }
}
