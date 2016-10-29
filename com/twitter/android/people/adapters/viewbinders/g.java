package com.twitter.android.people.adapters.viewbinders;

import com.twitter.android.people.adapters.l;
import com.twitter.ui.widget.PromptView;

/* compiled from: Twttr */
public abstract class g<T extends l> implements aj<T> {
    protected void a(PromptView promptView, T t) {
        promptView.setVisibility(0);
        promptView.setTitle(t.b.c.c);
        promptView.setSubtitle(t.b.d.c);
        promptView.setButtonText(t.c.c);
    }
}
