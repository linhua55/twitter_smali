package com.twitter.android.media.imageeditor.stickers;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.ViewGroup;
import cjw;
import java.util.List;

/* compiled from: Twttr */
public class o extends Adapter<u> {
    private final Context a;
    private final List<cjw> b;
    private final q c;

    public /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
        a((u) viewHolder, i);
    }

    public /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return a(viewGroup, i);
    }

    public o(Context context, List<cjw> list, q qVar) {
        this.a = context;
        this.b = list;
        this.c = qVar;
    }

    public u a(ViewGroup viewGroup, int i) {
        return r.a(this.a);
    }

    public void a(u uVar, int i) {
        cjw cjw = (cjw) this.b.get(i);
        r.a(cjw, uVar, new p(this, cjw));
    }

    public int getItemCount() {
        return this.b.size();
    }
}
