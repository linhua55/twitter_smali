package com.twitter.app.common.inject;

import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.util.s;
import com.twitter.app.common.util.t;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class e {
    protected final Activity a;
    protected final t b;

    protected <T extends Activity & s> e(T t, t tVar) {
        this.a = t;
        this.b = tVar;
    }

    public Activity f() {
        return this.a;
    }

    public static t a(Activity activity) {
        return (t) ObjectUtils.a((Object) activity);
    }

    public t g() {
        return this.b;
    }

    public static BaseFragmentActivity b(Activity activity) {
        return (BaseFragmentActivity) ObjectUtils.a((Object) activity, BaseFragmentActivity.class);
    }

    public static LayoutInflater c(Activity activity) {
        return LayoutInflater.from(activity);
    }

    public static Resources d(Activity activity) {
        return activity.getResources();
    }
}
