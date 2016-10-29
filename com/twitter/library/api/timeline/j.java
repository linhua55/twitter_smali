package com.twitter.library.api.timeline;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import bbn;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.i;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class j extends b {
    private final List<Long> a;
    private final List<Long> b;
    private final List<Long> c;
    private final i g;
    private final aj h;
    private final boolean i;

    public j(Context context, ab abVar, i iVar, aj ajVar, boolean z, List<Long> list, List<Long> list2, List<Long> list3) {
        super(context, j.class.getName(), abVar);
        this.g = iVar;
        this.h = ajVar;
        this.i = z;
        this.a = n.a(list);
        this.b = n.a(list2);
        this.c = n.a(list3);
    }

    protected d a() {
        return b().a();
    }

    @VisibleForTesting
    e b() {
        e a = K().a(RequestMethod.b).a("timelines", "feedback").a("feedback_type", this.g.b).a("undo", this.i);
        if (this.h != null) {
            if (this.h.b != null) {
                a.a("injection_type", this.h.b);
            } else {
                e();
            }
            if (this.h.c != null) {
                a.a("controller_data", this.h.c);
            }
            if (this.h.d != null) {
                a.a("source_data", this.h.d);
            }
        } else {
            e();
        }
        if (!this.a.isEmpty()) {
            a.a("tweet_ids", this.a);
        }
        if (!this.b.isEmpty()) {
            a.a("user_ids", this.b);
        }
        if (!this.c.isEmpty()) {
            a.a("moment_ids", this.c);
        }
        if (this.a.isEmpty() && this.b.isEmpty() && this.c.isEmpty()) {
            bbn.a(new IllegalStateException("Attempting to submit dismiss feedback without any item ids"));
        }
        return a;
    }

    private void e() {
        bbn.a(new IllegalStateException("Attempting to submit dismiss feedback without a suggestion type"));
    }

    protected c f() {
        return null;
    }
}
