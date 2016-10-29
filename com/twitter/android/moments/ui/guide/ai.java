package com.twitter.android.moments.ui.guide;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.twitter.app.main.MainActivity;
import defpackage.bus;
import defpackage.bym;

/* compiled from: Twttr */
public class ai {
    public static void a(Activity activity) {
        if (bus.a().c()) {
            activity.startActivity(MainActivity.a((Context) activity, MainActivity.f));
        } else {
            activity.startActivity(b(activity));
        }
    }

    public static Intent b(Activity activity) {
        return a((Context) activity);
    }

    public static Intent a(Context context) {
        return new Intent(context, ModernGuideActivity.class).putExtra("show_category_pills", bym.i());
    }
}
