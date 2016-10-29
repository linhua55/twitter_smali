package com.twitter.android.revenue.card;

import android.app.Activity;
import android.view.View;
import cmb;
import cmc;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.android.revenue.x;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
public class z extends k {
    private CardMediaView c;
    private MediaImageView d;

    public z(Activity activity, DisplayMode displayMode, f fVar, a aVar, cmb cmb) {
        super(activity, displayMode, fVar, aVar, cmb);
    }

    public void k() {
        cmc a = cmc.a("promo_image", this.a);
        if (a != null) {
            this.c = new CardMediaView(this.q);
            float dimension = this.q.getResources().getDimension(2131689727);
            if (x.a(this.q, this.x)) {
                this.c.a(dimension, 0.0f, 0.0f, dimension);
            } else {
                this.c.a(dimension, dimension, 0.0f, 0.0f);
            }
            this.d = (MediaImageView) this.c.findViewById(2131952122);
            this.d.setImageType("card");
            this.d.setAspectRatio(a.a(2.5f));
            this.d.a(com.twitter.media.request.a.a(a.a));
            this.d.setFromMemoryOnly(true);
        }
    }

    public View p() {
        return this.c;
    }

    public void b() {
        this.d.setFromMemoryOnly(false);
    }

    public void a() {
        super.a();
        this.d.i();
    }
}
