package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.StringRes;
import android.support.design.widget.Snackbar;
import android.support.v4.content.ContextCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import crw;
import crx;
import csa;

/* compiled from: Twttr */
public class u {
    public static Snackbar a(Context context, View view, @StringRes int i, int i2) {
        return a(context, view, context.getResources().getText(i), i2);
    }

    public static Snackbar a(Context context, View view, CharSequence charSequence, int i) {
        Snackbar make = Snackbar.make(view, charSequence, i);
        View view2 = make.getView();
        Resources resources = context.getResources();
        ax a = ax.a(context);
        int color = resources.getColor(crw.twitter_blue);
        int color2 = resources.getColor(crw.white);
        int dimensionPixelSize = resources.getDimensionPixelSize(crx.seamful_snackbar_text_size);
        view2.setBackgroundColor(color);
        Button button = (Button) view2.findViewById(csa.snackbar_action);
        button.setBackgroundResource(0);
        button.setTextColor(color2);
        button.setTypeface(a.c);
        button.setTextSize(0, (float) dimensionPixelSize);
        TextView textView = (TextView) view2.findViewById(csa.snackbar_text);
        textView.setTextColor(color2);
        textView.setTypeface(a.a);
        textView.setTextSize(0, (float) dimensionPixelSize);
        return make;
    }

    public static Snackbar a(Context context, View view, View view2) {
        int color = ContextCompat.getColor(context, crw.app_background);
        Snackbar make = Snackbar.make(view, BuildConfig.VERSION_NAME, -2);
        ViewGroup viewGroup = (ViewGroup) make.getView();
        viewGroup.setPadding(0, 0, 0, 0);
        viewGroup.setBackgroundResource(0);
        viewGroup.setBackgroundColor(color);
        ((TextView) viewGroup.findViewById(csa.snackbar_text)).setVisibility(4);
        viewGroup.addView(view2, 0);
        return make;
    }
}
