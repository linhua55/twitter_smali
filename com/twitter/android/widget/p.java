package com.twitter.android.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.twitter.model.topic.d;
import com.twitter.model.topic.e;
import com.twitter.util.aj;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class p {
    public final TextView a;
    public String b;
    public String c;
    public String d;
    public long e;
    public String f;
    public String g;
    public String h;
    public boolean i;
    private final View j;
    private final TextView k;
    private final TextView l;

    public p(View view) {
        this.j = view;
        this.k = (TextView) view.findViewById(2131951683);
        this.l = (TextView) view.findViewById(2131952079);
        this.a = (TextView) view.findViewById(2131952078);
    }

    public void a(Context context, Cursor cursor) {
        this.i = ((e) m.a(cursor.getBlob(5), d.a)).f == 1;
        this.b = cursor.getString(1);
        this.c = cursor.getString(2);
        this.d = cursor.getString(3);
        this.h = cursor.getString(4);
        this.e = cursor.getLong(6);
        this.f = cursor.getString(7);
        this.g = cursor.getString(8);
        this.a.setText(context.getString(2131362907, new Object[]{this.f, this.g}));
        this.k.setText(this.c);
        if (this.l != null) {
            if (aj.b(this.d)) {
                this.l.setText(this.d);
                this.l.setVisibility(0);
            } else {
                this.l.setVisibility(8);
            }
        }
        this.j.setVisibility(0);
    }

    public void a(ViewGroup viewGroup) {
        if (this.j.getParent() == null) {
            viewGroup.addView(this.j);
        }
    }
}
