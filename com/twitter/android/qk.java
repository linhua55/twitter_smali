package com.twitter.android;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.twitter.library.util.ao;

/* compiled from: Twttr */
public class qk extends BaseAdapter {
    protected ql[] a;
    private final int b;

    public qk(ql qlVar) {
        this(new ql[]{qlVar});
    }

    public qk(ql[] qlVarArr) {
        this(qlVarArr, 2130969395);
    }

    public qk(ql[] qlVarArr, int i) {
        this.a = qlVarArr;
        this.b = i;
    }

    public int getCount() {
        return this.a.length;
    }

    public Object getItem(int i) {
        return this.a[i].c;
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        return qm.a(this.b, view, viewGroup, this.a[i], ao.a);
    }

    public void a(int i, int i2) {
        this.a[i].a = i2;
        notifyDataSetChanged();
    }
}
