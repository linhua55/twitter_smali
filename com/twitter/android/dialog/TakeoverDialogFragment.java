package com.twitter.android.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import bxp;
import com.facebook.drawee.drawable.ScalingUtils.ScaleType;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.twitter.app.common.base.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.media.fresco.g;
import com.twitter.library.media.fresco.q;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.request.a;
import com.twitter.util.aj;
import com.twitter.util.ui.r;
import cu;
import cw;
import defpackage.bbu;
import defpackage.dk;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class TakeoverDialogFragment extends SimpleDialogFragment {
    protected WeakReference<Context> a;
    private boolean c;

    public /* synthetic */ l f() {
        return e();
    }

    public /* synthetic */ d g() {
        return e();
    }

    public TakeoverDialogFragment() {
        this.a = new WeakReference(null);
        setStyle(0, 2131558778);
    }

    public p e() {
        return p.c(getArguments());
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.a = new WeakReference(activity);
    }

    protected void a(Dialog dialog, Bundle bundle) {
        int i;
        int i2 = 0;
        super.a(dialog, bundle);
        p e = e();
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) b(2131951935);
        ImageView imageView = (ImageView) b(2131951642);
        b(2131951644).getBackground().setAlpha(249);
        String t = e.t();
        if (aj.b((CharSequence) t)) {
            ImageRequest l = ImageRequestBuilder.a(Uri.parse(t)).l();
            bxp bxp = new bxp();
            a a = a.a(t).a();
            dk h = ((cw) ((cw) ((cw) ((cw) cu.a().b(l)).a(new g(a))).a(true)).a(new q(a, new g(a)).c(bxp).a())).h();
            ((com.facebook.drawee.generic.a) simpleDraweeView.getHierarchy()).a(ScaleType.f);
            simpleDraweeView.setController(h);
        } else {
            simpleDraweeView.setVisibility(8);
        }
        if (imageView != null && e.v()) {
            imageView.setScaleType(ImageView.ScaleType.values()[e.u()]);
        }
        if (imageView.getVisibility() == 0 || simpleDraweeView.getVisibility() == 0) {
            i = true;
        } else {
            i = 0;
        }
        View b = b(2131951934);
        if (i != 0) {
            i2 = 8;
        }
        b.setVisibility(i2);
        if (bundle == null) {
            m();
            b();
        }
        View b2 = b(2131951635);
        if (b2 != null) {
            a(b2, (int) (20.0f * getResources().getDisplayMetrics().density));
        }
    }

    private void m() {
        int i = 0;
        for (View view : r.b(b(2131951644))) {
            int i2;
            if (view.getVisibility() == 0) {
                Animation loadAnimation = AnimationUtils.loadAnimation(getActivity(), 2131034162);
                loadAnimation.setInterpolator(new DecelerateInterpolator());
                loadAnimation.setStartOffset((long) (i * 100));
                view.startAnimation(loadAnimation);
                i2 = i + 1;
            } else {
                i2 = i;
            }
            i = i2;
        }
    }

    private static void a(View view, int i) {
        View view2 = (View) view.getParent();
        Rect rect = new Rect();
        view.getHitRect(rect);
        rect.left -= i;
        rect.top -= i;
        rect.bottom += i;
        rect.right += i;
        view2.post(new o(view2, rect, view));
    }

    public void a(FragmentManager fragmentManager) {
        if (fragmentManager.findFragmentByTag("TakeoverDialogFragment") == null) {
            super.show(fragmentManager, "TakeoverDialogFragment");
        }
    }

    public void show(FragmentManager fragmentManager, String str) {
        throw new RuntimeException("Use show(FragmentManager) instead of supplying your own tag. This ensures only 1 takeover dialog exists at once.");
    }

    protected void b() {
        this.c = false;
    }

    protected final void h() {
        d();
    }

    protected void d() {
        super.h();
    }

    protected final void i() {
        k();
    }

    protected void k() {
        super.i();
    }

    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        n();
    }

    protected void j() {
        super.j();
        n();
    }

    private void n() {
        if (!this.c) {
            c();
        }
    }

    protected void c() {
        this.c = true;
    }

    public void a(FragmentActivity fragmentActivity) {
        a(fragmentActivity.getSupportFragmentManager());
    }

    protected void a(String... strArr) {
        bbu.a(new TwitterScribeLog(l().g()).b(strArr));
    }

    protected Session l() {
        return bg.a().c();
    }
}
