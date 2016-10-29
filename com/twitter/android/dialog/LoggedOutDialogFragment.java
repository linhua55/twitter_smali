package com.twitter.android.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.twitter.android.io;
import com.twitter.app.common.base.d;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class LoggedOutDialogFragment extends SimpleDialogFragment {
    public /* synthetic */ l f() {
        return a();
    }

    public /* synthetic */ d g() {
        return a();
    }

    public f a() {
        return f.a(getArguments());
    }

    public String b() {
        return a().a();
    }

    public void onClick(View view) {
        Object obj = null;
        FragmentActivity activity = getActivity();
        switch (view.getId()) {
            case 2131951635:
                dismiss();
                obj = "cancel";
                break;
            case 2131951636:
                io.c(activity);
                obj = "login";
                break;
            case 2131951637:
                io.b(activity);
                obj = "signup";
                break;
            default:
                super.onClick(view);
                break;
        }
        if (aj.b(obj)) {
            io.a(activity, b() + ":" + obj + ":click");
        }
    }

    protected void a(Dialog dialog, Bundle bundle) {
        super.a(dialog, bundle);
        if (bundle == null) {
            c();
        }
    }

    private void c() {
        FragmentActivity activity = getActivity();
        Animation loadAnimation = AnimationUtils.loadAnimation(activity, 2131034196);
        loadAnimation.setStartOffset(100);
        b(2131951641).startAnimation(loadAnimation);
        if (activity.getResources().getConfiguration().orientation == 1) {
            loadAnimation = AnimationUtils.loadAnimation(activity, 2131034196);
            loadAnimation.setStartOffset(300);
            b(2131951636).startAnimation(loadAnimation);
        }
        Animation loadAnimation2 = AnimationUtils.loadAnimation(activity, 2131034197);
        loadAnimation2.setStartOffset(100);
        b(2131951635).startAnimation(loadAnimation2);
    }
}
