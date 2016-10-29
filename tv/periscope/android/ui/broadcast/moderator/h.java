package tv.periscope.android.ui.broadcast.moderator;

import android.view.View;
import android.view.View.OnClickListener;
import defpackage.dcv;

/* compiled from: Twttr */
class h implements OnClickListener {
    final /* synthetic */ ModeratorView a;

    private h(ModeratorView moderatorView) {
        this.a = moderatorView;
    }

    public void onClick(View view) {
        if (view == this.a.l) {
            dcv.c("ModeratorView", "Learn about moderation clicked");
            if (this.a.w != null) {
                this.a.w.p();
            }
        } else if (!this.a.g) {
            this.a.y.a();
            if (view == this.a.r) {
                dcv.c("ModeratorView", "Negative button clicked");
                if (this.a.w != null) {
                    this.a.w.l();
                }
            } else if (view == this.a.s) {
                dcv.c("ModeratorView", "Positive button clicked");
                if (this.a.w != null) {
                    this.a.w.k();
                }
            } else if (view == this.a.t) {
                dcv.c("ModeratorView", "Neutral button clicked");
                if (this.a.w != null) {
                    this.a.w.m();
                }
            } else {
                dcv.d("ModeratorView", "Undefined button clicked");
            }
        }
    }
}
