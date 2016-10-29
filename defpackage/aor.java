package defpackage;

import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import aos;
import apb;
import com.twitter.android.bu;
import com.twitter.util.object.g;

@Deprecated
/* compiled from: Twttr */
/* renamed from: aor */
public class aor<T> extends apb<aos, Cursor, cgu<T>> {
    private final chk<T> a;

    public aor(LoaderManager loaderManager, int i, g<bu> gVar, chk<T> chk_T) {
        super(new aos(loaderManager, i, gVar));
        this.a = chk_T;
    }

    public cgu<T> a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        return this.a.a(cursor);
    }
}
