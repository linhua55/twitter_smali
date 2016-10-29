package com.twitter.app.drafts;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import aoo;
import ape;
import com.twitter.android.composer.aw;
import com.twitter.model.drafts.d;

/* compiled from: Twttr */
class t implements OnItemClickListener {
    final /* synthetic */ v a;
    final /* synthetic */ ape b;
    final /* synthetic */ p c;
    final /* synthetic */ aoo d;
    final /* synthetic */ s e;

    t(s sVar, v vVar, ape ape, p pVar, aoo aoo) {
        this.e = sVar;
        this.a = vVar;
        this.b = ape;
        this.c = pVar;
        this.d = aoo;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        d dVar = (d) adapterView.getItemAtPosition(i);
        if (this.a.o()) {
            this.b.b(aw.a().a(dVar).b(this.a.n()));
            this.c.b();
            return;
        }
        this.d.a(dVar, d.a);
    }
}
