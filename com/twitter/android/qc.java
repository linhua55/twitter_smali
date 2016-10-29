package com.twitter.android;

import android.content.Context;
import android.graphics.Color;
import android.support.v4.content.ContextCompat;
import com.twitter.ui.widget.s;
import defpackage.bdd;

/* compiled from: Twttr */
public class qc extends s {
    private final SelectionFragment$SelectedItem a;

    public qc(SelectionFragment$SelectedItem selectionFragment$SelectedItem, Context context, boolean z) {
        int i;
        int i2 = 2131886407;
        if (z) {
            i = 2131886408;
        } else {
            i = 2131886409;
        }
        int color = ContextCompat.getColor(context, i);
        if (z) {
            i = 2131886407;
        } else {
            i = 2131886406;
        }
        int red = Color.red(ContextCompat.getColor(context, i));
        if (z) {
            i = 2131886407;
        } else {
            i = 2131886406;
        }
        i = Color.green(ContextCompat.getColor(context, i));
        if (!z) {
            i2 = 2131886406;
        }
        super(color, Color.argb(bdd.AppCompatTheme_checkboxStyle, red, i, Color.blue(ContextCompat.getColor(context, i2))), 0.0f, (float) context.getResources().getDimensionPixelSize(2131690134), (float) context.getResources().getDimensionPixelSize(2131690136), (float) context.getResources().getDimensionPixelSize(2131690133), 0.0f, (float) context.getResources().getDimensionPixelSize(2131690638));
        this.a = selectionFragment$SelectedItem;
    }

    public SelectionFragment$SelectedItem a() {
        return this.a;
    }
}
