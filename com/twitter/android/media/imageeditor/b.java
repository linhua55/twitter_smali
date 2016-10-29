package com.twitter.android.media.imageeditor;

import android.view.View;
import com.twitter.android.widget.RevealClipFrameLayout;
import com.twitter.util.concurrent.f;
import com.twitter.util.concurrent.j;

/* compiled from: Twttr */
final class b implements aa {
    final /* synthetic */ j a;
    final /* synthetic */ EditImageFragment b;
    final /* synthetic */ View c;
    final /* synthetic */ RevealClipFrameLayout d;

    b(j jVar, EditImageFragment editImageFragment, View view, RevealClipFrameLayout revealClipFrameLayout) {
        this.a = jVar;
        this.b = editImageFragment;
        this.c = view;
        this.d = revealClipFrameLayout;
    }

    public void a() {
        this.a.b(new f().a(EditImageFragment.a).a(new c(this)));
        this.b.a(null);
    }
}
