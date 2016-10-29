package com.twitter.android.profiles;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

/* compiled from: Twttr */
public class d implements OnClickListener {
    private final View a;
    private e b;

    public d(Context context, View view, String str) {
        this.a = view;
        view.setEnabled(false);
        view.setOnClickListener(null);
        view.setVisibility(0);
        ((TextView) view.findViewById(2131952021)).setText(context.getString(2131361968, new Object[]{str}));
        ((TextView) view.findViewById(2131952022)).setText(context.getString(2131361967, new Object[]{str}));
        view.findViewById(2131952023).setOnClickListener(this);
    }

    public void a(e eVar) {
        this.b = eVar;
    }

    public void onClick(View view) {
        if (this.b != null) {
            this.b.s();
        }
    }
}
