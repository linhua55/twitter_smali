package com.twitter.ui.view;

import android.text.Layout;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;

/* compiled from: Twttr */
final class q implements OnTouchListener {
    final /* synthetic */ p a;

    q(p pVar) {
        this.a = pVar;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        TextView textView = (TextView) view;
        Layout layout = textView.getLayout();
        if (layout == null) {
            return false;
        }
        p.a(this.a, layout);
        p.a(this.a, (float) (textView.getTotalPaddingLeft() + textView.getScrollX()));
        p.b(this.a, (float) (textView.getTotalPaddingTop() + textView.getScrollY()));
        return this.a.a(motionEvent);
    }
}
