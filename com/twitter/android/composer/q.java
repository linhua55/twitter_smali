package com.twitter.android.composer;

import android.view.View;
import com.twitter.ui.widget.Tooltip;
import com.twitter.ui.widget.af;

/* compiled from: Twttr */
class q implements af {
    final /* synthetic */ ComposerActivity a;

    q(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void a(Tooltip tooltip, int i) {
        if (i == 2) {
            this.a.t();
        } else if (i == 1 && "stickers_composer_tooltip".equals(tooltip.getTag())) {
            View findViewById = this.a.findViewById(2131952243);
            if (findViewById != null && findViewById.getVisibility() == 0) {
                findViewById.performClick();
                tooltip.a(false);
            }
        }
    }
}
