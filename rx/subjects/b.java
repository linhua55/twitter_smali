package rx.subjects;

import cys;
import rx.internal.operators.NotificationLite;
import rx.internal.producers.SingleProducer;

/* compiled from: Twttr */
final class b implements cys<n<T>> {
    final /* synthetic */ SubjectSubscriptionManager a;

    b(SubjectSubscriptionManager subjectSubscriptionManager) {
        this.a = subjectSubscriptionManager;
    }

    public /* synthetic */ void call(Object obj) {
        a((n) obj);
    }

    public void a(n<T> nVar) {
        Object a = this.a.a();
        NotificationLite notificationLite = this.a.nl;
        if (a == null || notificationLite.b(a)) {
            nVar.bs_();
        } else if (notificationLite.c(a)) {
            nVar.a(notificationLite.e(a));
        } else {
            nVar.a.a(new SingleProducer(nVar.a, notificationLite.d(a)));
        }
    }
}
