package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import cgu;
import com.twitter.app.lists.j;
import com.twitter.model.core.cg;

/* compiled from: Twttr */
/* renamed from: apz */
public class apz extends apb<aos, Cursor, cgu<cg>> {
    public apz(Context context, LoaderManager loaderManager, int i, aqa aqa) {
        super(new aos(loaderManager, i, new apy(context, aqa)));
    }

    public cgu<cg> a(Cursor cursor) {
        return cursor != null ? new j(cursor) : null;
    }
}
