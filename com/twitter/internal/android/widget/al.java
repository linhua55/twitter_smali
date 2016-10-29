package com.twitter.internal.android.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import bca;

/* compiled from: Twttr */
class al implements OnItemClickListener {
    final /* synthetic */ ToolBar a;

    al(ToolBar toolBar) {
        this.a = toolBar;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ToolBar.f(this.a).dismiss();
        if (ToolBar.a(this.a) != null) {
            ToolBar.a(this.a).a((bca) adapterView.getItemAtPosition(i));
        }
    }
}
