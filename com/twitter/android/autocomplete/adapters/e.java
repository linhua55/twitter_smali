package com.twitter.android.autocomplete.adapters;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.twitter.android.provider.g;
import com.twitter.config.d;

/* compiled from: Twttr */
public class e extends h<String, g> {
    private final int a;
    private final boolean b;

    public e(Context context) {
        this(context, 2130968884);
    }

    public e(Context context, int i) {
        super(context);
        this.a = i;
        this.b = d.a("hashflags_in_composer_android_enabled");
    }

    public View a(Context context, g gVar, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.a, viewGroup, false);
    }

    public void a(View view, Context context, g gVar) {
        View view2 = (TextView) view;
        if (!this.b || gVar.c == null) {
            view2.setText(gVar.a);
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(gVar.a);
        com.twitter.library.view.d.a(view.getContext(), spannableStringBuilder, gVar.c, view2, true);
        view2.setText(spannableStringBuilder);
    }

    public long getItemId(int i) {
        g gVar = (g) getItem(i);
        return gVar != null ? gVar.b : -1;
    }
}
