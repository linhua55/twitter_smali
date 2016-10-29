package defpackage;

import rx.internal.schedulers.ScheduledAction;

/* compiled from: Twttr */
/* renamed from: cyq */
class cyq implements cyr {
    final /* synthetic */ ScheduledAction a;
    final /* synthetic */ cyp b;

    cyq(cyp cyp, ScheduledAction scheduledAction) {
        this.b = cyp;
        this.a = scheduledAction;
    }

    public void a() {
        this.b.a.removeCallbacks(this.a);
    }
}
