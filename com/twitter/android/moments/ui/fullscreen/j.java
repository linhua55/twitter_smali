package com.twitter.android.moments.ui.fullscreen;

import android.content.res.Resources;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.twitter.android.av.audio.i;
import com.twitter.model.moments.MomentPageDisplayMode;

/* compiled from: Twttr */
public class j extends w {
    private final TextView c;

    public j(View view, ProgressBar progressBar, TextView textView, View view2, Resources resources, ProgressBar progressBar2, MomentPageDisplayMode momentPageDisplayMode, String str, bn<String, PageLoadingEvent> bnVar) {
        super(view, progressBar, textView, view2, resources, progressBar2, momentPageDisplayMode, str, bnVar);
        this.c = textView;
    }

    void a(PageLoadingEvent pageLoadingEvent) {
        super.a(pageLoadingEvent);
        if (pageLoadingEvent instanceof i) {
            int b = i.a.b(((i) pageLoadingEvent).a.b);
            TextView textView = this.c;
            if (b == 0) {
                b = 2131363083;
            }
            textView.setText(b);
        }
    }
}
