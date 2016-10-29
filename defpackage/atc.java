package defpackage;

import android.database.Cursor;
import cvi;
import dbl;
import rx.am;

/* compiled from: Twttr */
/* renamed from: atc */
class atc extends am<Cursor> {
    final /* synthetic */ am a;
    final /* synthetic */ atb b;
    private Cursor c;

    atc(atb atb, am amVar, am amVar2) {
        this.b = atb;
        this.a = amVar2;
        super(amVar);
    }

    public /* synthetic */ void b_(Object obj) {
        a((Cursor) obj);
    }

    public void bs_() {
        if (!this.a.b()) {
            this.a.bs_();
        }
    }

    public void a(Throwable th) {
        if (!this.a.b()) {
            this.a.a(th);
        }
    }

    public void a(Cursor cursor) {
        if (!(this.b.a.f || this.a.b())) {
            this.a.b_(cursor);
        }
        b(cursor);
    }

    public void c() {
        super.c();
        a(dbl.a(new atd(this)));
    }

    private void b(Cursor cursor) {
        synchronized (this.b.a.e) {
            if (this.c != null) {
                cvi.a(this.c);
                this.b.a.e.remove(this.c);
                this.c = null;
            }
            if (cursor != null) {
                if (this.b.a.f) {
                    cvi.a(cursor);
                } else {
                    this.c = cursor;
                }
            }
        }
    }
}
