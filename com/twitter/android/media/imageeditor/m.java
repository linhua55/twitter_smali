package com.twitter.android.media.imageeditor;

import com.twitter.ui.widget.Tooltip;
import com.twitter.ui.widget.af;

/* compiled from: Twttr */
class m implements af {
    final /* synthetic */ EditImageFragment a;

    m(EditImageFragment editImageFragment) {
        this.a = editImageFragment;
    }

    public void a(Tooltip tooltip, int i) {
        if (i == 1) {
            this.a.g();
            tooltip.a(false);
        }
    }
}
