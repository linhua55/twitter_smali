package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.library.client.bg;
import com.twitter.library.view.b;
import com.twitter.model.core.ap;
import com.twitter.model.core.cr;
import com.twitter.model.core.q;

/* compiled from: Twttr */
class wj extends b {
    final /* synthetic */ UmfPromptView a;
    private final Context b;

    private wj(UmfPromptView umfPromptView) {
        this.a = umfPromptView;
        this.b = this.a.getContext();
    }

    public void a(q qVar) {
        this.b.startActivity(fk.a(this.b, qVar));
    }

    public void a(com.twitter.model.core.b bVar) {
        this.b.startActivity(fk.a(this.b, bVar));
    }

    public void a(ap apVar) {
        this.b.startActivity(new Intent(this.b, ProfileActivity.class).putExtra("screen_name", apVar.i));
    }

    public void a(cr crVar) {
        OpenUriHelper.a(this.b, null, crVar, bg.a().c().g(), null, null, null, null);
    }
}
