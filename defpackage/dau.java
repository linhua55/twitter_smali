package defpackage;

import rx.exceptions.e;

/* compiled from: Twttr */
/* renamed from: dau */
public abstract class dau {
    public void a(Throwable th) {
    }

    public final String a(Object obj) {
        try {
            return b(obj);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return obj.getClass().getName() + ".errorRendering";
        } catch (Throwable th) {
            e.a(th);
            return obj.getClass().getName() + ".errorRendering";
        }
    }

    protected String b(Object obj) throws InterruptedException {
        return null;
    }
}
