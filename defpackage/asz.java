package defpackage;

import android.content.ContentResolver;
import android.database.Cursor;
import android.support.annotation.VisibleForTesting;
import atf;
import com.twitter.util.collection.MutableSet;
import cvi;
import cym;
import dbd;
import java.util.Set;
import rx.o;
import rx.t;

/* compiled from: Twttr */
/* renamed from: asz */
public class asz implements atf<aow, Cursor> {
    private final ate a;
    private final ContentResolver b;
    private final t c;
    private final t d;
    private final Set<Cursor> e;
    private volatile boolean f;

    public /* synthetic */ o a_(Object obj) {
        return a((aow) obj);
    }

    public asz(ContentResolver contentResolver) {
        this(cym.a(), dbd.d(), contentResolver, new atj(contentResolver));
    }

    @VisibleForTesting
    asz(t tVar, t tVar2, ContentResolver contentResolver, ate ate) {
        this.c = tVar;
        this.d = tVar2;
        this.b = contentResolver;
        this.a = ate;
        this.e = MutableSet.a();
    }

    public o<Cursor> a(aow aow) {
        return this.a.a(aow.a).d((Void) null).b(this.c).a(this.d).g(new ata(this, aow)).a(this.c).a(new atb());
    }

    public void close() {
        synchronized (this.e) {
            this.f = true;
            for (Cursor a : this.e) {
                cvi.a(a);
            }
            this.e.clear();
        }
    }
}
