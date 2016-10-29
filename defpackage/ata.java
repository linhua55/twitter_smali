package defpackage;

import android.database.Cursor;
import com.twitter.util.h;
import cvi;
import cyw;

/* compiled from: Twttr */
/* renamed from: ata */
class ata implements cyw<Void, Cursor> {
    final /* synthetic */ aow a;
    final /* synthetic */ asz b;

    ata(asz asz, aow aow) {
        this.b = asz;
        this.a = aow;
    }

    public Cursor a(Void voidR) {
        h.c();
        if (this.b.f) {
            return null;
        }
        Cursor query = this.b.b.query(this.a.a, this.a.b, this.a.c, this.a.d, this.a.e);
        synchronized (this.b.e) {
            if (this.b.f) {
                cvi.a(query);
                return null;
            }
            this.b.e.add(query);
            return query;
        }
    }
}
