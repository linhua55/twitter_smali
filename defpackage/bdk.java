package defpackage;

import android.content.Context;
import android.database.Cursor;
import cgq;
import com.twitter.util.j;
import com.twitter.util.object.ObjectUtils;

@Deprecated
/* compiled from: Twttr */
/* renamed from: bdk */
public abstract class bdk<T extends Cursor> extends bdl<T> {
    private final int a;

    protected bdk(Context context, int i) {
        super(context);
        j.b(i >= 0);
        this.a = i;
    }

    public final T e() {
        return j() ? ((cgq) ObjectUtils.a(h())).a() : null;
    }

    public final long getItemId(int i) {
        Cursor cursor = (Cursor) getItem(i);
        if (cursor != null) {
            return cursor.getLong(this.a);
        }
        return 0;
    }
}
