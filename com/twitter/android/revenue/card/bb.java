package com.twitter.android.revenue.card;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import cmb;
import cmc;
import com.twitter.android.revenue.x;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
class bb implements bc {
    private ViewGroup a;
    private CardMediaView b;
    private CardMediaView c;

    bb(Context context, cmb cmb, DisplayMode displayMode, float f) {
        LayoutParams layoutParams = new LayoutParams(-1, -2);
        this.a = new RelativeLayout(context);
        this.a.setLayoutParams(layoutParams);
        boolean a = x.a(context, displayMode);
        this.b = new CardMediaView(context);
        a(this.b, cmc.a("cover_promo_image", cmb), a, f);
        this.c = new CardMediaView(context);
        a(this.c, cmc.a("promo_image", cmb), a, f);
        this.a.addView(this.c, layoutParams);
        this.a.addView(this.b, layoutParams);
    }

    private void a(CardMediaView cardMediaView, cmc cmc, boolean z, float f) {
        if (cmc != null) {
            if (z) {
                cardMediaView.a(f, 0.0f, 0.0f, f);
            } else {
                cardMediaView.a(f, f, 0.0f, 0.0f);
            }
            MediaImageView mediaImageView = (MediaImageView) cardMediaView.findViewById(2131952122);
            mediaImageView.setImageType("card");
            mediaImageView.setAspectRatio(cmc.a(2.5f));
            mediaImageView.a(a.a(cmc.a));
            mediaImageView.setFromMemoryOnly(true);
        }
    }

    public void a(boolean z) {
        int i;
        int i2 = 8;
        CardMediaView cardMediaView = this.b;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        cardMediaView.setVisibility(i);
        CardMediaView cardMediaView2 = this.c;
        if (!z) {
            i2 = 0;
        }
        cardMediaView2.setVisibility(i2);
    }

    public View a() {
        return this.a;
    }

    public void b() {
        if (this.b != null) {
            this.b.getMediaImageView().setFromMemoryOnly(false);
        }
        if (this.c != null) {
            this.c.getMediaImageView().setFromMemoryOnly(false);
        }
    }

    public void c() {
        if (this.b != null) {
            this.b.getMediaImageView().i();
        }
        if (this.c != null) {
            this.c.getMediaImageView().i();
        }
    }
}
