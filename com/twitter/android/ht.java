package com.twitter.android;

import android.support.annotation.VisibleForTesting;
import com.twitter.android.timeline.aw;
import com.twitter.library.widget.InlineDismissView;
import com.twitter.library.widget.r;
import com.twitter.model.timeline.i;

@VisibleForTesting
/* compiled from: Twttr */
class ht implements r {
    final /* synthetic */ ho a;
    private final r b;

    ht(ho hoVar, r rVar) {
        this.a = hoVar;
        this.b = rVar;
    }

    public void a(InlineDismissView inlineDismissView, i iVar) {
        aw a = a(inlineDismissView);
        if (a != null) {
            this.a.a(a.n, iVar);
        }
        if (this.b != null) {
            this.b.a(inlineDismissView, iVar);
        }
    }

    public void b(InlineDismissView inlineDismissView, i iVar) {
        aw a = a(inlineDismissView);
        if (a != null) {
            this.a.f(a.n);
        }
        if (this.b != null) {
            this.b.b(inlineDismissView, iVar);
        }
    }

    public void c(InlineDismissView inlineDismissView, i iVar) {
        aw a = a(inlineDismissView);
        if (a != null) {
            long j = a.n;
            this.a.f(j);
            this.a.d(j);
        }
        if (this.b != null) {
            this.b.c(inlineDismissView, iVar);
        }
    }

    private aw a(InlineDismissView inlineDismissView) {
        return (aw) inlineDismissView.getTag(2131951712);
    }
}
