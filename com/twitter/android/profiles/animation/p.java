package com.twitter.android.profiles.animation;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.widget.af;

/* compiled from: Twttr */
class p implements OnClickListener {
    final /* synthetic */ o a;
    private boolean b;
    private final MediaPlayer c;

    p(o oVar) {
        this.a = oVar;
        this.c = MediaPlayer.create(this.a.c.getContext(), 2131296257);
    }

    public void onClick(View view) {
        if (!this.b) {
            this.a.c.b();
            this.b = true;
            Drawable drawable = this.a.a.getDrawable();
            if (drawable instanceof Animatable) {
                af afVar = (af) drawable;
                afVar.a(new q(this, view));
                if (!afVar.isRunning()) {
                    afVar.start();
                    this.c.start();
                }
            }
        }
    }
}
