package com.twitter.library.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.timeline.i;

/* compiled from: Twttr */
class s implements OnClickListener {
    final /* synthetic */ InlineDismissView a;

    private s(InlineDismissView inlineDismissView) {
        this.a = inlineDismissView;
    }

    public void onClick(View view) {
        i iVar = (i) view.getTag();
        if (iVar != null) {
            this.a.b(iVar);
            view.getBackground().setVisible(false, false);
        }
    }
}
