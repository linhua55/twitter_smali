package com.twitter.android.people.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.widget.l;

/* compiled from: Twttr */
public class a implements l<String> {
    public /* synthetic */ void a(View view, Object obj, int i) {
        b(view, (String) obj, i);
    }

    public /* synthetic */ void b(View view, Object obj, int i) {
        a(view, (String) obj, i);
    }

    public View a(Context context, String str, int i) {
        View inflate = LayoutInflater.from(context).inflate(2130969162, null);
        inflate.setTag(new b(inflate));
        a(inflate, str, i);
        return inflate;
    }

    public void a(View view, String str, int i) {
        ((b) view.getTag()).a.setText(str);
    }

    public void b(View view, String str, int i) {
    }
}
