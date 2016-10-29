package rx.subjects;

import defpackage.cyr;

/* compiled from: Twttr */
class l implements cyr {
    final /* synthetic */ n a;
    final /* synthetic */ SubjectSubscriptionManager b;

    l(SubjectSubscriptionManager subjectSubscriptionManager, n nVar) {
        this.b = subjectSubscriptionManager;
        this.a = nVar;
    }

    public void a() {
        this.b.b(this.a);
    }
}
