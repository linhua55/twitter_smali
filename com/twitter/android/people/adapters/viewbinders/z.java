package com.twitter.android.people.adapters.viewbinders;

import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.people.adapters.i;
import com.twitter.android.people.adapters.t;
import com.twitter.ui.widget.PromptView;

/* compiled from: Twttr */
public class z extends g<t> {
    public boolean a(i iVar) {
        return iVar instanceof t;
    }

    public View a(t tVar, ViewGroup viewGroup) {
        return new PromptView(viewGroup.getContext());
    }

    public void a(View view, t tVar) {
        PromptView promptView = (PromptView) view;
        a(promptView, tVar);
        promptView.setOnPromptClickListener(new aa(this, view, tVar));
    }

    public boolean a(t tVar) {
        return false;
    }
}
