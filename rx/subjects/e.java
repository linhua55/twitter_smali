package rx.subjects;

import java.util.ArrayList;
import java.util.List;
import rx.internal.operators.NotificationLite;
import rx.p;

/* compiled from: Twttr */
public final class e<T> extends k<T, T> {
    final SubjectSubscriptionManager<T> c;
    private final NotificationLite<T> d;

    public static <T> e<T> q() {
        Object subjectSubscriptionManager = new SubjectSubscriptionManager();
        subjectSubscriptionManager.onTerminated = new f(subjectSubscriptionManager);
        return new e(subjectSubscriptionManager, subjectSubscriptionManager);
    }

    protected e(p<T> pVar, SubjectSubscriptionManager<T> subjectSubscriptionManager) {
        super(pVar);
        this.d = NotificationLite.a();
        this.c = subjectSubscriptionManager;
    }

    public void bs_() {
        if (this.c.active) {
            Object b = this.d.b();
            for (n a : this.c.c(b)) {
                a.a(b, this.c.nl);
            }
        }
    }

    public void a(Throwable th) {
        if (this.c.active) {
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
            rx.exceptions.e.a(list);
        }
    }

    public void b_(T t) {
        for (n b_ : this.c.b()) {
            b_.b_(t);
        }
    }
}
