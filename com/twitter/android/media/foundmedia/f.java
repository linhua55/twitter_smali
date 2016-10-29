package com.twitter.android.media.foundmedia;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.twitter.android.util.v;

/* compiled from: Twttr */
class f implements OnEditorActionListener {
    final /* synthetic */ GifCategoriesActivity a;

    f(GifCategoriesActivity gifCategoriesActivity) {
        this.a = gifCategoriesActivity;
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (keyEvent == null || keyEvent.getAction() != 0) {
            return false;
        }
        CharSequence text = textView.getText();
        if (text.length() <= 0) {
            return true;
        }
        String charSequence = text.toString();
        v.a(this.a, charSequence, 1, charSequence, 1, this.a.a);
        this.a.c();
        return true;
    }
}
