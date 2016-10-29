package rx.subjects;

import java.util.ArrayList;
import java.util.List;
import rx.exceptions.e;
import rx.internal.operators.NotificationLite;
import rx.internal.producers.SingleProducer;
import rx.p;

/* compiled from: Twttr */
public final class a<T> extends k<T, T> {
    final SubjectSubscriptionManager<T> c;
    volatile Object d;
    private final NotificationLite<T> e;

    public static <T> a<T> q() {
        Object subjectSubscriptionManager = new SubjectSubscriptionManager();
        subjectSubscriptionManager.onTerminated = new b(subjectSubscriptionManager);
        return new a(subjectSubscriptionManager, subjectSubscriptionManager);
    }

    protected a(p<T> pVar, SubjectSubscriptionManager<T> subjectSubscriptionManager) {
        super(pVar);
        this.e = NotificationLite.a();
        this.c = subjectSubscriptionManager;
    }

    public void bs_() {
        if (this.c.active) {
            Object obj = this.d;
            if (obj == null) {
                obj = this.e.b();
            }
            for (n nVar : this.c.c(obj)) {
                if (obj == this.e.b()) {
                    nVar.bs_();
                } else {
                    nVar.a.a(new SingleProducer(nVar.a, this.e.d(obj)));
                }
            }
        }
    }

    public void a(Throwable th) {
        if (this.c.active) {
            List list = null;
            for (n a : this.c.c(this.e.a(th))) {
                try {
                    a.a(th);
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
        this.d = this.e.a((Object) t);
    }
}
