package rx.subjects;

import java.util.ArrayList;
import java.util.List;
import rx.exceptions.e;
import rx.internal.operators.NotificationLite;
import rx.p;

/* compiled from: Twttr */
public final class c<T> extends k<T, T> {
    private static final Object[] e;
    private final SubjectSubscriptionManager<T> c;
    private final NotificationLite<T> d;

    public static <T> c<T> q() {
        return a(null, false);
    }

    public static <T> c<T> e(T t) {
        return a(t, true);
    }

    private static <T> c<T> a(T t, boolean z) {
        Object subjectSubscriptionManager = new SubjectSubscriptionManager();
        if (z) {
            subjectSubscriptionManager.a(NotificationLite.a().a((Object) t));
        }
        subjectSubscriptionManager.onAdded = new d(subjectSubscriptionManager);
        subjectSubscriptionManager.onTerminated = subjectSubscriptionManager.onAdded;
        return new c(subjectSubscriptionManager, subjectSubscriptionManager);
    }

    protected c(p<T> pVar, SubjectSubscriptionManager<T> subjectSubscriptionManager) {
        super(pVar);
        this.d = NotificationLite.a();
        this.c = subjectSubscriptionManager;
    }

    public void bs_() {
        if (this.c.a() == null || this.c.active) {
            Object b = this.d.b();
            for (n a : this.c.c(b)) {
                a.a(b, this.c.nl);
            }
        }
    }

    public void a(Throwable th) {
        if (this.c.a() == null || this.c.active) {
            Object a = this.d.a(th);
            List list = null;
            for (n a2 : this.c.c(a)) {
                try {
                    a2.a(a, this.c.nl);
                } catch (Throwable th2) {
                    if (list == null) {
                        list = new ArrayList();
                    }
                    list.add(th2);
                }
            }
            e.a(list);
        }
    }

    public void b_(T t) {
        if (this.c.a() == null || this.c.active) {
            Object a = this.d.a((Object) t);
            for (n a2 : this.c.b(a)) {
                a2.a(a, this.c.nl);
            }
        }
    }

    static {
        e = new Object[0];
    }
}
