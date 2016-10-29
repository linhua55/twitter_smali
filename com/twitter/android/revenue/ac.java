package com.twitter.android.revenue;

import com.twitter.model.timeline.an;
import com.twitter.model.timeline.ap;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bw;
import com.twitter.model.timeline.by;
import com.twitter.model.timeline.cf;
import com.twitter.model.timeline.ch;
import com.twitter.util.object.ObjectUtils;
import ctc;

/* compiled from: Twttr */
class ac implements ctc<av, av> {
    final /* synthetic */ ab a;

    ac(ab abVar) {
        this.a = abVar;
    }

    public av a(av avVar) {
        if (avVar instanceof an) {
            return (av) ((ap) new ap().a(((an) ObjectUtils.a(avVar)).a).b(avVar.b)).q();
        } else if (avVar instanceof cf) {
            return (av) ((ch) new ch().a(((cf) ObjectUtils.a(avVar)).a).b(avVar.b)).q();
        } else if (avVar instanceof bw) {
            return (av) ((by) new by().a(((bw) ObjectUtils.a(avVar)).a).b(avVar.b)).q();
        } else {
            throw new IllegalStateException("Encountered an unexpected TimelineEntity of type: " + avVar.c);
        }
    }
}
