package com.twitter.app.common.base;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.twitter.util.object.ObjectUtils;
import defpackage.apd;

/* compiled from: Twttr */
public class u<T extends u<T>> extends apd {
    protected u(Intent intent) {
        super(intent);
    }

    public T d(boolean z) {
        a(this.b, z);
        return (u) ObjectUtils.a((Object) this);
    }

    public Intent a(Context context) {
        throw new UnsupportedOperationException("Call toIntent with an actual activity class");
    }

    public final Intent a(Context context, Class<? extends TwitterFragmentActivity> cls) {
        return this.b.setComponent(new ComponentName(context, cls));
    }

    public static boolean b(Intent intent) {
        return intent.getBooleanExtra("extra_up_as_back", false);
    }

    public static Intent a(Intent intent, boolean z) {
        return intent.putExtra("extra_up_as_back", z);
    }
}
