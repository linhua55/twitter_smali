package com.twitter.internal.android.widget;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import bca;
import com.twitter.util.aj;
import defpackage.bcy;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
class aq extends BaseAdapter {
    private final ar a;
    private List<bca> b;

    private aq(ar arVar) {
        this.b = new ArrayList();
        this.a = arVar;
    }

    public int getCount() {
        return this.b.size();
    }

    public Object getItem(int i) {
        return this.b.get(i);
    }

    public long getItemId(int i) {
        return (long) ((bca) this.b.get(i)).a();
    }

    public boolean isEnabled(int i) {
        return ((bca) this.b.get(i)).l();
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        at atVar;
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(bcy.overflow_drop_down_item, viewGroup, false);
            at atVar2 = new at(view);
            view.setTag(atVar2);
            atVar = atVar2;
        } else {
            atVar = (at) view.getTag();
        }
        bca bca = (bca) this.b.get(i);
        atVar.a.setText(bca.j());
        CharSequence o = bca.o();
        if (aj.b(o)) {
            atVar.b.setText(o);
            atVar.b.setVisibility(0);
        } else {
            atVar.b.setVisibility(8);
        }
        Drawable p = bca.p();
        if (p != null) {
            atVar.c.setImageDrawable(p);
            atVar.c.setVisibility(0);
        } else {
            atVar.c.setVisibility(8);
        }
        return view;
    }

    public void a(List<bca> list) {
        if (list != null) {
            this.b.clear();
            for (bca bca : list) {
                if (bca.j() != null && bca.h()) {
                    this.b.add(bca);
                }
            }
            this.b = ToolBar.a(this.b, this.a);
            notifyDataSetChanged();
        }
    }
}
