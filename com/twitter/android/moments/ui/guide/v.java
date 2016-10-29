package com.twitter.android.moments.ui.guide;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.moments.MomentGuideSectionType;
import com.twitter.model.moments.ab;

/* compiled from: Twttr */
class v implements OnClickListener {
    final /* synthetic */ ab a;
    final /* synthetic */ MomentModule b;
    final /* synthetic */ MediaImageView c;
    final /* synthetic */ u d;

    v(u uVar, ab abVar, MomentModule momentModule, MediaImageView mediaImageView) {
        this.d = uVar;
        this.a = abVar;
        this.b = momentModule;
        this.c = mediaImageView;
    }

    public void onClick(View view) {
        this.d.a_.a(this.a.b, MomentGuideSectionType.b, this.b, this.c);
    }
}
