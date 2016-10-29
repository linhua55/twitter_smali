package com.twitter.android;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.twitter.ui.widget.v;
import java.util.List;

/* compiled from: Twttr */
public class bs extends BaseAdapter implements v {
    final LayoutInflater a;
    List<br> b;

    public /* synthetic */ Object getItem(int i) {
        return a(i);
    }

    public bs(Context context, List<br> list) {
        this.a = LayoutInflater.from(context);
        this.b = list;
    }

    public int a(br brVar) {
        return this.b.indexOf(brVar);
    }

    public int getCount() {
        return this.b.size();
    }

    public br a(int i) {
        if (i < 0 || i >= this.b.size()) {
            return null;
        }
        return (br) this.b.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = a(i, viewGroup);
        }
        a(i, view);
        return view;
    }

    protected View a(int i, ViewGroup viewGroup) {
        View inflate = this.a.inflate(2130968722, viewGroup, false);
        inflate.setTag(new bt((TextView) inflate.findViewById(2131952268), (TextView) inflate.findViewById(2131952269)));
        return inflate;
    }

    protected void a(int i, View view) {
        br brVar = (br) this.b.get(i);
        bt btVar = (bt) view.getTag();
        btVar.a.setText(brVar.a);
        btVar.b.setText(brVar.a());
    }

    public void a(View view, int i) {
        ((TextView) view).setText(i == -1 ? "+1" : ((br) this.b.get(i)).a());
    }
}
