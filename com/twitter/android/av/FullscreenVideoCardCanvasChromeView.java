package com.twitter.android.av;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.android.av.revenue.VideoAppCardData;
import com.twitter.android.card.CardActionHelper;
import com.twitter.android.revenue.w;
import com.twitter.android.revenue.x;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.ui.widget.TwitterButton;

/* compiled from: Twttr */
public class FullscreenVideoCardCanvasChromeView extends FullscreenRevenueCardCanvasChromeView {
    TwitterButton n;
    private VideoAppCardData o;
    private CardActionHelper p;
    private View q;

    public FullscreenVideoCardCanvasChromeView(Context context) {
        super(context);
    }

    public void a(View view, CardActionHelper cardActionHelper, VideoAppCardData videoAppCardData) {
        this.q = view;
        this.p = cardActionHelper;
        this.o = videoAppCardData;
        if (this.m != null) {
            MediaImageView mediaImageView = (MediaImageView) this.m.findViewById(2131953363);
            if (this.o.h != null) {
                mediaImageView.a(a.a(this.o.h));
            } else {
                mediaImageView.setBackgroundResource(2130839363);
            }
            TextView textView = (TextView) this.m.findViewById(2131951868);
            TextView textView2 = (TextView) this.m.findViewById(2131953295);
            LinearLayout linearLayout = (LinearLayout) this.m.findViewById(2131953294);
            textView.setText(this.o.b);
            if (this.o.d != null) {
                float f = 0.0f;
                try {
                    f = Float.parseFloat(this.o.d);
                } catch (NumberFormatException e) {
                }
                x.a(getContext(), linearLayout, 2130839901, 2130839903, 2130839899, getResources().getDimensionPixelOffset(2131690548), f, 5.0f);
            }
            ((TextView) findViewById(2131952927)).setText(getResources().getString(2131364140, new Object[]{this.o.e}));
            if (this.o.c != null) {
                textView2.setText(this.o.c);
            }
            int a = w.a(this.o.j);
            this.l.setText(a);
            this.n.setText(a);
        }
    }

    protected void E() {
        this.l.setOnTouchListener(new ap(this, this.l));
    }

    protected void F() {
        this.m.setOnTouchListener(new aq(this));
        this.n = (TwitterButton) this.m.findViewById(2131953364);
        this.n.setOnTouchListener(new ar(this, this.n));
    }

    void a(View view, MotionEvent motionEvent) {
        if (this.p != null) {
            this.p.a(this.o.g, this.o.f, this.o.i, NativeCardUserAction.a(this.q, view, motionEvent, 0));
        }
    }

    protected TwitterButton c(Context context) {
        return (TwitterButton) LayoutInflater.from(context).inflate(2130969519, this, false);
    }

    protected View d(Context context) {
        return LayoutInflater.from(context).inflate(2130969520, this, false);
    }
}
