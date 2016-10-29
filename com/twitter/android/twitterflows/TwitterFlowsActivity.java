package com.twitter.android.twitterflows;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.app.common.base.TwitterFragmentActivity;
import flow.Flow.Direction;
import flow.d;
import flow.g;
import flow.h;
import flow.j;
import flow.k;
import flow.s;

/* compiled from: Twttr */
public abstract class TwitterFlowsActivity extends TwitterFragmentActivity implements d {
    private h a;

    protected abstract d c();

    protected void a(Bundle bundle) {
        s eVar = new e();
        this.a = h.a((j) a_("flow_data"), getIntent(), bundle, eVar, k.a(c()), this);
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.a.a(intent);
    }

    protected void onResume() {
        super.onResume();
        this.a.a();
    }

    protected void onPause() {
        this.a.c();
        super.onPause();
    }

    protected void p_() {
        super.p_();
        a("flow_data", (Object) this.a.b());
    }

    public Object getSystemService(String str) {
        Object obj = null;
        if (this.a != null) {
            obj = this.a.a(str);
        }
        return obj != null ? obj : super.getSystemService(str);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.a.a(bundle);
    }

    public void onBackPressed() {
        if (!this.a.d()) {
            super.onBackPressed();
        }
    }

    protected void a(ViewGroup viewGroup, View view, View view2, Direction direction, g gVar) {
        if (view == null || direction == Direction.REPLACE || !com.twitter.config.d.a("smart_nux_flow_transition_animation_enabled")) {
            viewGroup.removeAllViews();
            viewGroup.addView(view2);
            gVar.a();
            return;
        }
        viewGroup.addView(view2);
        f.a(view2, new k(this, viewGroup, view, direction, gVar));
    }

    private void b(ViewGroup viewGroup, View view, View view2, Direction direction, g gVar) {
        Animator a = a(view, view2, direction);
        a.addListener(new m(this, viewGroup, view, gVar));
        a.start();
    }

    private Animator a(View view, View view2, Direction direction) {
        int i = direction == Direction.BACKWARD ? 1 : 0;
        int width = i != 0 ? view.getWidth() : -view.getWidth();
        int width2 = i != 0 ? -view2.getWidth() : view2.getWidth();
        Animator animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(view, View.TRANSLATION_X, new float[]{(float) width}));
        animatorSet.play(ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, new float[]{(float) width2, 0.0f}));
        return animatorSet;
    }
}
