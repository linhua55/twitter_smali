package com.twitter.android.people.adapters.viewbinders;

import android.view.View;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.people.adapters.t;
import com.twitter.library.client.bg;
import com.twitter.ui.widget.PromptView;
import com.twitter.ui.widget.r;

/* compiled from: Twttr */
class aa implements r {
    final /* synthetic */ View a;
    final /* synthetic */ t b;
    final /* synthetic */ z c;

    aa(z zVar, View view, t tVar) {
        this.c = zVar;
        this.a = view;
        this.b = tVar;
    }

    public void a(PromptView promptView) {
        OpenUriHelper.a(this.a.getContext(), null, this.b.c.d, bg.a().c().g(), null, null, null);
    }

    public void b(PromptView promptView) {
    }
}
