package com.twitter.android.media.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.twitter.model.media.foundmedia.c;
import java.util.List;

/* compiled from: Twttr */
class aj extends BaseAdapter {
    final /* synthetic */ GifCategoriesView a;
    private List<c> b;

    aj(GifCategoriesView gifCategoriesView, List<c> list) {
        this.a = gifCategoriesView;
        this.b = list;
    }

    public int getCount() {
        return ((this.b.size() + this.a.c) - 1) / this.a.c;
    }

    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        view = view instanceof al ? (al) view : new al(this.a, this.a.getContext(), this.a.c);
        view.a(this.b, i);
        return view;
    }

    void a(List<c> list) {
        this.b = list;
        notifyDataSetChanged();
    }
}
