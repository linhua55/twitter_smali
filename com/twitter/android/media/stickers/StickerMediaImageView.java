package com.twitter.android.media.stickers;

import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.content.Context;
import android.support.v4.view.animation.PathInterpolatorCompat;
import android.view.animation.Interpolator;
import buv;
import com.twitter.library.media.util.ad;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.MediaImageView;
import defpackage.cjv;

/* compiled from: Twttr */
public class StickerMediaImageView extends MediaImageView {
    private static final Interpolator a;
    private final cjv i;
    private final AnimatorSet j;

    static {
        a = PathInterpolatorCompat.create(0.215f, 0.61f, 0.355f, 1.0f);
    }

    public StickerMediaImageView(Context context, cjv cjv) {
        super(context, null, true);
        setClipChildren(false);
        this.i = cjv;
        this.j = (AnimatorSet) AnimatorInflater.loadAnimator(context, 2131099649);
        this.j.setInterpolator(a);
        this.j.addListener(new b(this));
    }

    public cjv getStickerTag() {
        return this.i;
    }

    public void aI_() {
        if (buv.d()) {
            this.j.setTarget(this);
            this.j.start();
        }
    }

    public void b() {
        this.j.cancel();
        setVisibility(8);
    }

    protected a b(b bVar) {
        if (bVar != null) {
            bVar.a("stickers");
            bVar.a(new ad(this.i.c));
        }
        return super.b(bVar);
    }
}
