package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.support.annotation.CallSuper;
import com.twitter.database.model.l;
import com.twitter.database.model.n;
import com.twitter.util.h;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: atx */
public abstract class atx {
    protected static final atz a;
    private final n b;
    private final SQLiteDatabase c;

    protected abstract int a();

    protected abstract List<? extends atz> b();

    static {
        a = new aty(-1);
    }

    protected atx(n nVar, SQLiteDatabase sQLiteDatabase) {
        this.b = nVar;
        this.c = sQLiteDatabase;
    }

    public final void a(int i, int i2) {
        boolean z;
        h.b(i2 == a());
        List b = b();
        int i3 = i2 - 1;
        int size = b.size();
        if (i3 == size) {
            z = true;
        } else {
            z = false;
        }
        h.a(z, "Expected " + i3 + " migrators but got " + size);
        for (int i4 = i - 1; i4 < size; i4++) {
            boolean z2;
            atz atz = (atz) b.get(i4);
            int i5 = i4 + 2;
            if (atz.a == i5 || atz.a == -1) {
                z2 = true;
            } else {
                z2 = false;
            }
            h.a(z2, "Expected migrator with version " + i5 + " at index " + i4 + "; found " + atz.a);
            atz.a(this.b, this.c);
        }
        a(this.b);
    }

    @CallSuper
    protected l a(n nVar) {
        return nVar.c();
    }
}
