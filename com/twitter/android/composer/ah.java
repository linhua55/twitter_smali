package com.twitter.android.composer;

import android.content.res.Resources;
import android.view.animation.Animation;
import android.widget.ImageButton;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class ah extends c {
    final /* synthetic */ ImageButton a;
    final /* synthetic */ Resources b;
    final /* synthetic */ Animation c;
    final /* synthetic */ ComposerActivity d;

    ah(ComposerActivity composerActivity, ImageButton imageButton, Resources resources, Animation animation) {
        this.d = composerActivity;
        this.a = imageButton;
        this.b = resources;
        this.c = animation;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.setImageDrawable(this.b.getDrawable(2130837791));
        this.a.startAnimation(this.c);
    }
}
