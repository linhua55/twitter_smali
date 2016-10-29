package com.twitter.android.media.camera;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class am implements OnClickListener {
    final /* synthetic */ ah a;

    am(ah ahVar) {
        this.a = ahVar;
    }

    public void onClick(View view) {
        if (!this.a.n.a()) {
            if (this.a.R >= 0 && this.a.R < this.a.N.size()) {
                this.a.t();
                this.a.a("twitter_camera::video:preview:" + (this.a.V ? "pause" : "play"));
            } else if (!this.a.N.isEmpty()) {
                this.a.a("twitter_camera::video:preview:replay");
                this.a.a(0, 0).a();
                this.a.s();
            }
        }
    }
}
