package com.twitter.android.moments.ui.fullscreen;

import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.widget.ToggleImageButton;
import com.twitter.util.h;

@VisibleForTesting
/* compiled from: Twttr */
class cc implements OnClickListener {
    private final cg a;
    private final ToggleImageButton b;

    cc(cg cgVar, ToggleImageButton toggleImageButton) {
        this.a = cgVar;
        this.b = toggleImageButton;
    }

    public void onClick(View view) {
        boolean z;
        boolean z2 = true;
        if (view == this.b) {
            z = true;
        } else {
            z = false;
        }
        h.b(z);
        cg cgVar = this.a;
        if (this.b.b()) {
            z2 = false;
        }
        cgVar.a(z2);
    }
}
