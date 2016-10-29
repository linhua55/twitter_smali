package com.twitter.android.communities.header;

import rx.am;
import rx.p;

/* compiled from: Twttr */
class i implements p<Void> {
    final /* synthetic */ TextHeaderView a;

    i(TextHeaderView textHeaderView) {
        this.a = textHeaderView;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super Void> amVar) {
        TextHeaderView.a(this.a).setOnClickListener(new j(this, amVar));
    }
}
