package com.twitter.android.dm;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.DMActivity;
import com.twitter.android.RootDMActivity;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.u;

/* compiled from: Twttr */
public class r {
    public static Intent a(Context context, n nVar) {
        return a(context, nVar, false);
    }

    public static Intent a(Context context, n nVar, boolean z) {
        return a(context, DMActivity.class, nVar, z);
    }

    public static Intent a(Context context, l lVar) {
        return a(context, DMActivity.class, (b) lVar);
    }

    public static Intent a(Context context) {
        return a(context, new m().d());
    }

    public static Intent a(Context context, v vVar) {
        return a(context, ShareViaDMActivity.class, (b) vVar);
    }

    public static Intent b(Context context) {
        return a(context, new w().d());
    }

    public static Intent a(Context context, b bVar) {
        return a(context, DMActivity.class, bVar);
    }

    public static Intent c(Context context) {
        return a(context, new d().a());
    }

    public static Intent b(Context context, b bVar) {
        return a(context, RootDMActivity.class, bVar);
    }

    public static Intent d(Context context) {
        return b(context, new d().a());
    }

    private static Intent a(Context context, Class<? extends TwitterFragmentActivity> cls, b bVar) {
        return a(context, cls, bVar, false);
    }

    private static Intent a(Context context, Class<? extends TwitterFragmentActivity> cls, b bVar, boolean z) {
        return new u().d(z).a(context, (Class) cls).putExtras(bVar.h());
    }
}
