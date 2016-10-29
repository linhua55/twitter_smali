package com.twitter.android.client.notifications;

import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.i;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public abstract class l extends m {
    private List<i> b;

    protected abstract boolean a(i iVar);

    protected l(ad adVar, String str, long j) {
        super(adVar, str, j);
    }

    public List<i> b() {
        if (this.b != null) {
            return this.b;
        }
        List<i> list = this.c.v;
        if (list.isEmpty()) {
            throw new IllegalArgumentException("InteractionNotifThresholdAggregator should not be used with an empty inbox");
        }
        n d = n.d();
        for (i iVar : list) {
            if (a(iVar)) {
                d.c(iVar);
            }
        }
        this.b = (List) d.q();
        return this.b;
    }
}
