package com.twitter.android.moments.ui.guide;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.moments.viewmodels.ab;
import com.twitter.model.moments.MomentGuideSectionType;

/* compiled from: Twttr */
class ao implements OnClickListener {
    final /* synthetic */ ab a;
    final /* synthetic */ am b;

    ao(am amVar, ab abVar) {
        this.b = amVar;
        this.a = abVar;
    }

    public void onClick(View view) {
        this.b.a_.a(this.a.b().b, MomentGuideSectionType.b, this.a, this.b.p);
    }
}
