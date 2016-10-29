package rx;

import defpackage.cyr;
import defpackage.dat;
import defpackage.dau;
import defpackage.dax;
import defpackage.dbh;
import java.util.concurrent.Callable;
import rx.exceptions.e;

/* compiled from: Twttr */
public class a {
    static final dau a;
    static dat b;
    static final a c;
    static final a d;
    private final m e;

    static {
        a = dax.a().b();
        b = dax.a().e();
        c = a(new b());
        d = a(new c());
    }

    public static a a(m mVar) {
        NullPointerException e;
        a((Object) mVar);
        try {
            return new a(mVar);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            a.a(th);
            e2 = a(th);
        }
    }

    public static a a(Callable<?> callable) {
        a((Object) callable);
        return a(new l(callable));
    }

    static <T> T a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    static NullPointerException a(Throwable th) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th);
        return nullPointerException;
    }

    protected a(m mVar) {
        this.e = b.a(mVar);
    }

    public final a a(t tVar) {
        a((Object) tVar);
        return a(new d(this, tVar));
    }

    public final an a() {
        dbh dbh = new dbh();
        a(new h(this, dbh));
        return dbh;
    }

    public final an a(cyr cyr) {
        a((Object) cyr);
        dbh dbh = new dbh();
        a(new i(this, cyr, dbh));
        return dbh;
    }

    private static void c(Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }

    public final void a(n nVar) {
        NullPointerException e;
        a((Object) nVar);
        try {
            b.a(this, this.e).call(nVar);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            e.a(th);
            Throwable th2 = b.a(th2);
            a.a(th2);
            e2 = a(th2);
        }
    }

    public final a b(t tVar) {
        a((Object) tVar);
        return a(new j(this, tVar));
    }
}
