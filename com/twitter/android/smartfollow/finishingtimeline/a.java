package com.twitter.android.smartfollow.finishingtimeline;

import android.os.Handler;
import android.os.Parcelable;
import android.support.annotation.VisibleForTesting;
import com.twitter.android.smartfollow.b;
import com.twitter.android.smartfollow.m;
import com.twitter.config.d;
import com.twitter.library.client.az;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class a extends b<FinishingTimelineState, FinishingTimelineScreen> {
    protected static final long i;
    private static final List<Integer> p;
    @VisibleForTesting
    protected String j;
    @VisibleForTesting
    protected boolean k;
    @VisibleForTesting
    protected boolean l;
    @VisibleForTesting
    protected c m;
    protected int n;
    protected int o;
    private final Handler q;

    public /* synthetic */ Parcelable c() {
        return u();
    }

    static {
        i = ((long) d.a("smart_nux_smart_follow_timings_message_display_duration", 3.0d)) * 1000;
        p = (List) n.d().c(Integer.valueOf(2131363825)).c(Integer.valueOf(2131363826)).c(Integer.valueOf(2131363827)).q();
    }

    public a(Handler handler, FinishingTimelineState finishingTimelineState) {
        this.m = new c(this);
        this.n = 0;
        this.o = 0;
        this.q = handler;
        if (finishingTimelineState != null) {
            this.k = finishingTimelineState.a;
            this.j = finishingTimelineState.c;
            this.n = finishingTimelineState.d;
            this.o = finishingTimelineState.e;
            this.l = finishingTimelineState.b;
        }
    }

    public String aF_() {
        return "presenter_finishing_timeline";
    }

    public FinishingTimelineState u() {
        return new FinishingTimelineState(this.k, this.j, this.n, this.o, this.l);
    }

    protected void q() {
        super.q();
        if (!this.k) {
            long[] d = e().d();
            if (d.length <= 0) {
                this.k = true;
            } else if (this.j == null || !az.a(g()).a(this.j)) {
                this.j = d().a(d, this.m);
            }
        }
        ((FinishingTimelineScreen) b()).setDescription(((Integer) p.get(this.n)).intValue());
        v();
        this.q.removeCallbacksAndMessages(null);
        this.q.postDelayed(new b(this), i);
    }

    @VisibleForTesting
    protected void v() {
        m d = d();
        d.c();
        if (this.k && !this.l && k()) {
            d.b(j());
            this.l = true;
        }
    }

    @VisibleForTesting
    protected void a(Runnable runnable) {
        int i = this.n + 1;
        this.o = Math.max(this.o, i);
        if (this.k && this.o == p.size()) {
            t();
            return;
        }
        this.n = i % p.size();
        ((FinishingTimelineScreen) b()).setDescription(((Integer) p.get(this.n)).intValue());
        this.q.postDelayed(runnable, i);
    }

    protected void o() {
        super.o();
        this.q.removeCallbacksAndMessages(null);
    }

    protected String p() {
        return "finishing_timeline_screen";
    }
}
