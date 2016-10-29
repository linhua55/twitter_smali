package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteOpenHelper;
import atw;
import aug;

/* compiled from: Twttr */
/* renamed from: atv */
public abstract class atv extends SQLiteOpenHelper {
    private static atw a;
    private static boolean b;

    protected atv(Context context, String str, int i) {
        if (b) {
            str = ":memory:";
        }
        super(context, str, aug.a, i);
        cqf.a(atv.class);
    }

    protected void a() {
        if (a != null) {
            a.a(getWritableDatabase());
        }
    }
}
