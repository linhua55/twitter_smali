package com.twitter.android.commerce.widget.form;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class a implements OnClickListener {
    final /* synthetic */ ExpandableTextView a;

    a(ExpandableTextView expandableTextView) {
        this.a = expandableTextView;
    }

    public void onClick(View view) {
        ExpandableTextView.a(this.a, !ExpandableTextView.a(this.a));
        ExpandableTextView.b(this.a);
        this.a.requestFocusFromTouch();
    }
}
