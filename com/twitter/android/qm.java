package com.twitter.android;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* compiled from: Twttr */
public class qm {
    public final TextView a;
    public final TextView b;
    public final TextView c;
    public final View d;

    public qm(View view) {
        this.a = (TextView) view.findViewById(2131951868);
        this.b = (TextView) view.findViewById(2131952333);
        this.c = (TextView) view.findViewById(2131952251);
        this.d = view.findViewById(2131951646);
    }

    public static View a(int i, View view, ViewGroup viewGroup, ql qlVar, float f) {
        if (view == null) {
            view = a(i, viewGroup, f);
        }
        a(view, qlVar);
        return view;
    }

    public static View a(int i, ViewGroup viewGroup, float f) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
        qm qmVar = new qm(inflate);
        inflate.setTag(qmVar);
        if (f > 0.0f) {
            qmVar.a.setTextSize(0, f);
        }
        return inflate;
    }

    public static void a(View view, ql qlVar) {
        qm qmVar = (qm) view.getTag();
        qmVar.a.setText(qlVar.b);
        if (qmVar.c != null) {
            int i = qlVar.a;
            if (i > 0) {
                qmVar.c.setText(String.valueOf(i));
                qmVar.c.setVisibility(0);
                return;
            }
            qmVar.c.setVisibility(8);
        }
    }
}
