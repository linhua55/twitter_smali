package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.content.res.Resources;
import com.twitter.android.dialog.j;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.a;
import com.twitter.model.moments.ab;

/* compiled from: Twttr */
class dq {
    public static j a(Context context, Tweet tweet, dz dzVar) {
        return new j(context.getString(2131363118), new dr(dzVar, tweet));
    }

    public static j b(Context context, Tweet tweet, dz dzVar) {
        return new j(context.getString(2131361962), new ds(dzVar, tweet));
    }

    public static j a(Resources resources, ab abVar, a aVar, dz dzVar) {
        return new j(resources.getString(2131363084, new Object[]{aVar.e}), new dt(dzVar, abVar, aVar));
    }

    public static j c(Context context, Tweet tweet, dz dzVar) {
        return new j(context.getString(2131363105), new du(dzVar, tweet));
    }

    public static j a(Context context, dm dmVar) {
        return new j(context.getString(2131363115), new dv(dmVar));
    }

    public static j b(Context context, dm dmVar) {
        return new j(context.getString(2131363109), new dw(dmVar));
    }

    public static j c(Context context, dm dmVar) {
        return new j(context.getString(2131363766), new dx(dmVar));
    }

    public static j a(Resources resources, dz dzVar, ab abVar, Tweet tweet) {
        return new j(resources.getString(2131363104), new dy(dzVar, abVar, tweet));
    }
}
