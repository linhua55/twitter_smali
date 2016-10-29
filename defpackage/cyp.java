package defpackage;

import android.os.Handler;
import dbg;
import java.util.concurrent.TimeUnit;
import rx.an;
import rx.internal.schedulers.ScheduledAction;
import rx.u;

/* compiled from: Twttr */
/* renamed from: cyp */
class cyp extends u {
    private final Handler a;
    private final dbg b;

    cyp(Handler handler) {
        this.b = new dbg();
        this.a = handler;
    }

    public void K_() {
        this.b.K_();
    }

    public boolean b() {
        return this.b.b();
    }

    public an a(cyr cyr, long j, TimeUnit timeUnit) {
        if (this.b.b()) {
            return dbl.b();
        }
        an scheduledAction = new ScheduledAction(cyk.a().b().a(cyr));
        scheduledAction.a(this.b);
        this.b.a(scheduledAction);
        this.a.postDelayed(scheduledAction, timeUnit.toMillis(j));
        scheduledAction.a(dbl.a(new cyq(this, scheduledAction)));
        return scheduledAction;
    }

    public an a(cyr cyr) {
        return a(cyr, 0, TimeUnit.MILLISECONDS);
    }
}
