package rx.subjects;

import cys;

/* compiled from: Twttr */
final class d implements cys<n<T>> {
    final /* synthetic */ SubjectSubscriptionManager a;

    d(SubjectSubscriptionManager subjectSubscriptionManager) {
        this.a = subjectSubscriptionManager;
    }

    public /* synthetic */ void call(Object obj) {
        a((n) obj);
    }

    public void a(n<T> nVar) {
        nVar.b(this.a.a(), this.a.nl);
    }
}
