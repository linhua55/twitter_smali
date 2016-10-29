package com.twitter.android.media.imageeditor;

import android.view.View;
import com.twitter.ui.widget.Tooltip;

/* compiled from: Twttr */
class l implements Runnable {
    final /* synthetic */ View a;
    final /* synthetic */ EditImageFragment b;

    l(EditImageFragment editImageFragment, View view) {
        this.b = editImageFragment;
        this.a = view;
    }

    public void run() {
        Tooltip.a(this.b.getActivity(), this.a.getId()).d(2131952394).a(2131362697).c(0).a(true).a(this.b.getFragmentManager(), "tooltip");
        this.b.i.a();
    }
}
