package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import atv;
import com.twitter.database.lru.schema.LruSchema;
import com.twitter.database.model.m;
import com.twitter.database.model.o;
import com.twitter.util.collection.MutableMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: aui */
public class aui extends atv {
    private static final Map<Long, aui> a;
    private LruSchema b;

    static {
        a = MutableMap.a();
    }

    protected aui(Context context, long j) {
        super(context, j + "-" + "lru_key_value" + ".db", 1);
        a();
    }

    public static synchronized aui a(Context context, long j) {
        aui aui;
        synchronized (aui.class) {
            aui = (aui) a.get(Long.valueOf(j));
            if (aui == null) {
                aui = new aui(context.getApplicationContext(), j);
                a.put(Long.valueOf(j), aui);
            }
        }
        return aui;
    }

    public LruSchema b() {
        if (this.b == null) {
            this.b = (LruSchema) m.a(LruSchema.class, new auf(this));
        }
        return this.b;
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m.a(LruSchema.class, new aue(sQLiteDatabase)).e();
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        new auj(o.a(LruSchema.class, new aue(sQLiteDatabase)), sQLiteDatabase).a(i, i2);
    }
}
