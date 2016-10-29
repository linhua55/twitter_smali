package com.twitter.android.businessprofiles.gallery;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class b implements OnClickListener {
    final /* synthetic */ ViewHolder a;
    final /* synthetic */ c b;
    final /* synthetic */ int c;
    final /* synthetic */ a d;

    b(a aVar, ViewHolder viewHolder, c cVar, int i) {
        this.d = aVar;
        this.a = viewHolder;
        this.b = cVar;
        this.c = i;
    }

    public void onClick(View view) {
        if (this.d.d != null) {
            this.d.d.a(this.a.itemView, this.b, this.c);
        }
    }
}
