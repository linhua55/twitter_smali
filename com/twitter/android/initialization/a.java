package com.twitter.android.initialization;

import android.app.Activity;
import android.content.res.Resources.Theme;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.TypedValue;
import bus;
import com.twitter.app.common.base.b;
import com.twitter.app.common.util.i;
import com.twitter.library.util.g;
import defpackage.bct;
import defpackage.bcu;

/* compiled from: Twttr */
class a extends i {
    final /* synthetic */ AppStyleInitializer a;

    a(AppStyleInitializer appStyleInitializer) {
        this.a = appStyleInitializer;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        Theme theme = activity.getTheme();
        this.a.a(activity);
        bus a = bus.a();
        if (a.c()) {
            theme.applyStyle(2131558566, true);
            if (a.f()) {
                theme.applyStyle(2131558931, true);
            } else if (a.e()) {
                theme.applyStyle(2131558938, true);
            }
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(bct.toolbarTitleColor, typedValue, true);
            if (typedValue.resourceId == bcu.seamful_text_blue) {
                theme.applyStyle(2131558939, true);
            }
            if (activity instanceof b) {
                g.a().a(((b) activity).H(), activity);
            }
        }
    }

    public void onActivityResumed(Activity activity) {
        g.a().a(activity, PreferenceManager.getDefaultSharedPreferences(activity));
    }
}
