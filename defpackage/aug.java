package defpackage;

import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteProgram;
import android.database.sqlite.SQLiteQuery;
import bbl;
import bbn;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.util.object.ObjectUtils;
import java.lang.reflect.Method;

/* compiled from: Twttr */
/* renamed from: aug */
public class aug extends SQLiteCursor {
    public static final CursorFactory a;
    private final String b;
    private final SQLiteQuery c;
    private final boolean d;

    static {
        a = new auh();
    }

    public aug(SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        boolean z = true;
        super(sQLiteCursorDriver, str, sQLiteQuery);
        this.b = str;
        this.c = sQLiteQuery;
        if (AppConfig.n()) {
            AppConfig m = AppConfig.m();
            if (!(m.p() || m.o() || d.a("android_error_reporter_cursor_window_refill_enabled"))) {
                z = false;
            }
            this.d = z;
            return;
        }
        this.d = true;
    }

    public boolean onMove(int i, int i2) {
        if (this.d && this.mWindow != null && (i2 < this.mWindow.getStartPosition() || i2 >= this.mWindow.getStartPosition() + this.mWindow.getNumRows())) {
            bbn.a(new bbl().a("cursor_database", aug.a(SQLiteDatabase.class, getDatabase(), "getLabel")).a("cursor_table", this.b).a("cursor_query", aug.a(SQLiteProgram.class, this.c, "getSql")).a("cursor_old_position", Integer.valueOf(i)).a("cursor_new_position", Integer.valueOf(i2)).a(new IllegalStateException("Cursor window will be refilled.")));
        }
        return super.onMove(i, i2) && i2 >= this.mWindow.getStartPosition() && i2 < this.mWindow.getStartPosition() + this.mWindow.getNumRows();
    }

    private static String a(Class<?> cls, Object obj, String str) {
        try {
            Method declaredMethod = cls.getDeclaredMethod(str, new Class[0]);
            declaredMethod.setAccessible(true);
            return (String) ObjectUtils.a(declaredMethod.invoke(obj, new Object[0]));
        } catch (Exception e) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
    }
}
