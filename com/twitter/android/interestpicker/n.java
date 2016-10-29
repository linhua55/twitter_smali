package com.twitter.android.interestpicker;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.internal.android.widget.PillToggleButton;

/* compiled from: Twttr */
class n implements OnClickListener {
    final /* synthetic */ PillToggleButton a;
    final /* synthetic */ aw b;
    final /* synthetic */ m c;

    n(m mVar, PillToggleButton pillToggleButton, aw awVar) {
        this.c = mVar;
        this.a = pillToggleButton;
        this.b = awVar;
    }

    public void onClick(View view) {
        this.a.toggle();
        this.b.b();
        m.b(this.b, this.a);
        if (this.c.a != null) {
            this.c.a.a(this.b);
        }
        this.c.a(this.b.c);
    }
}
