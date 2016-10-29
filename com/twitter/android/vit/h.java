package com.twitter.android.vit;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.List;

/* compiled from: Twttr */
class h implements OnItemClickListener {
    final /* synthetic */ List a;
    final /* synthetic */ VitFilterBarViewDelegate b;

    h(VitFilterBarViewDelegate vitFilterBarViewDelegate, List list) {
        this.b = vitFilterBarViewDelegate;
        this.a = list;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.b.f.dismiss();
        ((k) this.a.get(i)).b.onClick(view);
    }
}
