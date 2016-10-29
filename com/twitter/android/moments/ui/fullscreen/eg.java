package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.client.OpenUriHelper;
import com.twitter.library.client.bg;
import com.twitter.library.view.b;
import com.twitter.model.core.ap;
import com.twitter.model.core.cr;

/* compiled from: Twttr */
class eg extends b {
    final /* synthetic */ ef a;

    eg(ef efVar) {
        this.a = efVar;
    }

    public void a(ap apVar) {
        this.a.a(apVar.i);
    }

    public void a(cr crVar) {
        OpenUriHelper.a(this.a.a, null, crVar, bg.a().c().g(), null, null, null, null);
    }
}
