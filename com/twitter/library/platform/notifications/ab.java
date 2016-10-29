package com.twitter.library.platform.notifications;

import android.content.Context;
import android.support.v4.util.TimeUtils;
import com.twitter.util.m;
import defpackage.bbl;

/* compiled from: Twttr */
public class ab extends bbl {
    public ab(Context context, String str, int i) {
        a("PushDebugErrorLog.error code", Integer.valueOf(i));
        a("PushDebugErrorLog.account", str);
        StringBuilder stringBuilder = new StringBuilder();
        TimeUtils.formatDuration(m.b() - w.a(context, str).b(), stringBuilder);
        a("PushDebugErrorLog.refresh duration", stringBuilder);
    }
}
