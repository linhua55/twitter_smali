package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.timeline.aj;

/* compiled from: Twttr */
public abstract class l extends b<c> {
    private final long a;
    private final aj b;

    protected l(Context context, String str, ab abVar, long j, aj ajVar) {
        super(context, str, abVar);
        this.a = j;
        this.b = ajVar;
    }

    protected c f() {
        return null;
    }

    protected d a() {
        return e().a();
    }

    e e() {
        e a = K().a(RequestMethod.b).a("timelines", "dismiss").a("tweet_id", String.valueOf(this.a));
        if (this.b != null) {
            if (this.b.b != null) {
                a.a("suggestion_type", this.b.b);
            }
            if (this.b.c != null) {
                a.a("controller_data", this.b.c);
            }
            if (this.b.d != null) {
                a.a("source_data", this.b.d);
            }
        }
        return a;
    }
}
