package com.twitter.android.av.revenue;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.android.av.RevenueCardCanvasActivity;
import com.twitter.android.card.CardActionHelper;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.revenue.w;
import com.twitter.android.revenue.x;
import com.twitter.library.client.d;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.ui.widget.TwitterButton;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class VideoCardCanvasActivity extends RevenueCardCanvasActivity {
    private VideoAppCardData p;
    private ab q;
    private CardActionHelper r;
    private Button s;
    private String t;

    protected void b(Bundle bundle, d dVar) {
        OnTouchListener dVar2;
        this.t = this.p.f;
        MediaImageView mediaImageView = (MediaImageView) findViewById(2131953363);
        if (this.p.h != null) {
            mediaImageView.a(a.a(this.p.h));
        } else {
            mediaImageView.setBackgroundResource(2130839363);
        }
        this.s = (Button) findViewById(2131951973);
        TextView textView = (TextView) findViewById(k.title);
        TextView textView2 = (TextView) findViewById(2131953295);
        View findViewById = findViewById(2131953362);
        LinearLayout linearLayout = (LinearLayout) findViewById(2131953294);
        textView.setText(this.p.b);
        if (this.p.d != null) {
            float f = 0.0f;
            try {
                f = Float.parseFloat(this.p.d);
            } catch (NumberFormatException e) {
            }
            x.a(this, linearLayout, 2130839898, 2130839902, 2130839900, getResources().getDimensionPixelOffset(2131690548), f, 5.0f);
        }
        ((TextView) findViewById(2131952927)).setText(getResources().getString(2131364140, new Object[]{this.p.e}));
        if (this.p.c != null) {
            textView2.setText(this.p.c);
        }
        this.q = new c(this);
        findViewById.setOnTouchListener(this.q);
        if (this.s instanceof TwitterButton) {
            dVar2 = new d(this, (TwitterButton) this.s);
        } else {
            dVar2 = this.q;
        }
        this.s.setOnTouchListener(dVar2);
        this.s.setText(w.b(this.p.j));
    }

    protected boolean l() {
        return this.p != null;
    }

    protected String m() {
        return this.p.a;
    }

    protected int p() {
        return 2130969518;
    }

    private void a(View view, MotionEvent motionEvent) {
        this.r.a(this.p.g, this.t, this.p.i, NativeCardUserAction.a((View) this.a, view, motionEvent, 0));
    }

    protected void c() {
        super.c();
        this.p = (VideoAppCardData) getIntent().getExtras().getParcelable("video_canvas_data");
        com.twitter.android.card.a bVar = new b(this);
        f hVar = new h(this);
        hVar.a(this.f);
        hVar.a(this.e);
        this.r = new CardActionHelper(this, bVar, hVar, "video_app_card_canvas");
        VideoAppCardView videoAppCardView = (VideoAppCardView) this.a;
        videoAppCardView.setVideoAppCardData(this.p);
        videoAppCardView.setActionHelper(this.r);
    }
}
