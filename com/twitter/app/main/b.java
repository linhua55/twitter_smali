package com.twitter.app.main;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

/* compiled from: Twttr */
class b implements OnItemClickListener {
    final /* synthetic */ MainActivity a;

    b(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (i == this.a.p.getCurrentItem()) {
            this.a.r();
        } else {
            this.a.p.setCurrentItem(i);
        }
    }
}
