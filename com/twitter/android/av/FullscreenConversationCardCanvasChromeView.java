package com.twitter.android.av;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.twitter.android.av.revenue.VideoConversationCardData;
import com.twitter.android.av.revenue.VideoConversationPlayerCanvasView;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.model.core.Tweet;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class FullscreenConversationCardCanvasChromeView extends FullscreenRevenueCardCanvasChromeView {
    private TwitterButton n;
    private TwitterButton o;
    private VideoConversationCardData p;
    private a q;
    private View r;
    private f s;
    private String[] t;

    public FullscreenConversationCardCanvasChromeView(Context context) {
        super(context);
    }

    protected void E() {
    }

    protected void F() {
    }

    protected TwitterButton c(Context context) {
        return (TwitterButton) LayoutInflater.from(context).inflate(2130969519, this, false);
    }

    protected View d(Context context) {
        return LayoutInflater.from(context).inflate(2130969525, this, false);
    }

    public void a(VideoConversationPlayerCanvasView videoConversationPlayerCanvasView, VideoConversationCardData videoConversationCardData, a aVar) {
        this.r = videoConversationPlayerCanvasView;
        this.p = videoConversationCardData;
        this.q = aVar;
        this.s = new h(getContext());
        this.s.a(this.p.j);
        if (this.m != null) {
            TextView textView;
            if (aj.b(this.p.f)) {
                Tweet tweet = this.p.j;
                if (tweet.q()) {
                    ((UserImageView) findViewById(2131952874)).a(tweet.r);
                    ((TextView) findViewById(2131953366)).setText(tweet.B);
                    ((TextView) findViewById(2131953367)).setText("@" + tweet.v);
                    findViewById(2131953365).setVisibility(0);
                }
                textView = (TextView) findViewById(2131953368);
                textView.setText(this.p.f);
                textView.setVisibility(0);
                findViewById(2131953369).setVisibility(0);
            }
            if (aj.b(this.p.g)) {
                textView = (TextView) findViewById(2131951868);
                textView.setText(this.p.g);
                textView.setTypeface(com.twitter.android.revenue.card.h.a, 0);
                textView.setVisibility(0);
            }
            an anVar = new an(this);
            Resources resources = getResources();
            this.n = (TwitterButton) this.m.findViewById(2131953373);
            this.n.setText(resources.getString(2131362322, new Object[]{this.p.a}));
            this.n.setOnTouchListener(anVar);
            this.o = (TwitterButton) this.m.findViewById(2131953374);
            if (aj.b(this.p.c)) {
                this.o.setText(resources.getString(2131362322, new Object[]{this.p.c}));
                this.o.setOnTouchListener(anVar);
                this.t = new String[2];
                this.t[0] = this.p.a;
                this.t[1] = this.p.c;
            } else {
                this.o.setVisibility(8);
            }
            this.l.setText(2131363376);
            this.l.setOnTouchListener(anVar);
        }
    }

    private void a(View view, MotionEvent motionEvent) {
        this.s.a(PromotedEvent.o, NativeCardUserAction.a(this.r, view, motionEvent, 0));
        if (view == this.n) {
            a(this.p.b);
        } else if (view == this.o) {
            a(this.p.d);
        } else {
            G();
        }
    }

    private void G() {
        if (this.t == null) {
            a(this.p.b);
        } else {
            H();
        }
    }

    private void H() {
        new Builder(getContext()).setTitle(2131362323).setItems(this.t, new ao(this)).create().show();
    }

    protected void a(String str) {
        Tweet tweet = this.p.j;
        this.q.a(str, this.p.i, tweet.aa(), tweet.f);
    }
}
