package defpackage;

import android.database.Cursor;
import aow;
import asx;
import java.io.IOException;
import rx.o;

@Deprecated
/* compiled from: Twttr */
/* renamed from: asw */
public abstract class asw<T extends cgu> implements atf<aow, T> {
    private final atf<aow, Cursor> a;

    protected abstract T a(Cursor cursor);

    public /* synthetic */ o a_(Object obj) {
        return a((aow) obj);
    }

    protected asw(atf<aow, Cursor> atf_aow__android_database_Cursor) {
        this.a = atf_aow__android_database_Cursor;
    }

    public o<T> a(aow aow) {
        return this.a.a_(aow).g(new asx(this));
    }

    public void close() throws IOException {
        this.a.close();
    }
}
