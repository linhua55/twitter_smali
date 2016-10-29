package com.twitter.android.timeline;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.moments.ui.fullscreen.MomentsFullScreenPagerActivity;
import com.twitter.model.moments.ab;

/* compiled from: Twttr */
class ac implements OnClickListener {
    final /* synthetic */ ba a;
    final /* synthetic */ int b;
    final /* synthetic */ Activity c;
    final /* synthetic */ ab d;

    ac(ab abVar, ba baVar, int i, Activity activity) {
        this.d = abVar;
        this.a = baVar;
        this.b = i;
        this.c = activity;
    }

    public void onClick(View view) {
        this.d.f.b(this.a, this.b);
        ab abVar = this.a.a.b;
        if (abVar.b != -1) {
            this.c.startActivity(MomentsFullScreenPagerActivity.b(this.c, abVar.b));
        }
    }
}
