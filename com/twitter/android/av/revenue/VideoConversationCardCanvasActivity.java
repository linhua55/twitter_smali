package com.twitter.android.av.revenue;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.android.av.RevenueCardCanvasActivity;
import com.twitter.android.card.a;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.revenue.card.h;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.d;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.util.aj;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class VideoConversationCardCanvasActivity extends RevenueCardCanvasActivity {
    private VideoConversationCardData p;
    private a q;
    private f r;
    private Button s;
    private Button t;

    @TargetApi(21)
    protected void b(Bundle bundle, d dVar) {
        OnTouchListener fVar = new f(this);
        if (aj.b(this.p.f)) {
            if (this.e.q()) {
                ((UserImageView) findViewById(2131952874)).a(this.e.r);
                ((TextView) findViewById(2131953366)).setText(this.e.B);
                ((TextView) findViewById(2131953367)).setText("@" + this.e.v);
                ((RelativeLayout) findViewById(2131953365)).setVisibility(0);
            }
            TextView textView = (TextView) findViewById(2131953368);
            textView.setText(this.p.f);
            textView.setVisibility(0);
            findViewById(2131953369).setVisibility(0);
        }
        if (aj.b(this.p.g)) {
            textView = (TextView) findViewById(k.title);
            textView.setText(this.p.g);
            textView.setTypeface(h.a, 0);
            textView.setVisibility(0);
            findViewById(2131953370).setVisibility(0);
        }
        Resources resources = getResources();
        this.s = (Button) findViewById(2131951973);
        this.s.setText(resources.getString(2131362322, new Object[]{this.p.a}));
        this.s.setOnTouchListener(fVar);
        this.t = (Button) findViewById(2131953372);
        if (this.p.c != null) {
            this.t.setText(resources.getString(2131362322, new Object[]{this.p.c}));
            this.t.setOnTouchListener(fVar);
        } else {
            findViewById(2131953371).setVisibility(8);
            this.t.setVisibility(8);
            this.s.setBackgroundResource(2130837718);
        }
        if (VERSION.SDK_INT >= 21) {
            this.s.setStateListAnimator(null);
            this.t.setStateListAnimator(null);
        }
    }

    protected boolean l() {
        return this.p != null;
    }

    protected String m() {
        return this.p.h;
    }

    protected int p() {
        return 2130969526;
    }

    private void a(View view, MotionEvent motionEvent) {
        this.r.a(PromotedEvent.CARD_CLICK, NativeCardUserAction.a((View) this.a, view, motionEvent, 0));
        if (view == this.s) {
            b(this.p.b);
        } else if (view == this.t) {
            b(this.p.d);
        }
    }

    protected void b(String str) {
        this.q.a(str, this.p.i, this.e.aa(), this.e.f);
    }

    protected void c() {
        super.c();
        this.p = (VideoConversationCardData) getIntent().getExtras().getParcelable("video_conversation_data");
        this.q = new b(this);
        this.r = new com.twitter.android.card.h(this);
        VideoConversationCardView videoConversationCardView = (VideoConversationCardView) this.a;
        videoConversationCardView.setVideoConversationCardData(this.p);
        videoConversationCardView.setActionHandler(this.q);
    }
}
