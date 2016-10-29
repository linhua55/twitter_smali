package defpackage;

import android.database.Cursor;
import cgu;
import chj;

/* compiled from: Twttr */
/* renamed from: cgy */
public final class cgy {
    public static <T> cgu<T> a(Cursor cursor, chj<T> chj_T, int i, int i2) {
        che che = new che();
        while (i < i2) {
            cursor.moveToPosition(i);
            che.a(chj_T.a(cursor));
            i++;
        }
        return che.a();
    }
}
