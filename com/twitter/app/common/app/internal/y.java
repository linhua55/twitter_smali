package com.twitter.app.common.app.internal;

import android.content.Context;
import com.twitter.app.common.account.UserIdentifier;
import com.twitter.database.lru.schema.LruSchema;
import com.twitter.database.schema.DraftsSchema;
import com.twitter.database.schema.TwitterSchema;
import com.twitter.library.provider.di;
import com.twitter.library.provider.v;
import defpackage.aui;

/* compiled from: Twttr */
public class y {
    static di a(Context context, UserIdentifier userIdentifier) {
        return di.a(context, userIdentifier.b());
    }

    static TwitterSchema a(di diVar) {
        return diVar.b();
    }

    static v b(Context context, UserIdentifier userIdentifier) {
        return v.a(context, userIdentifier.b());
    }

    static DraftsSchema a(v vVar) {
        return vVar.b();
    }

    static aui c(Context context, UserIdentifier userIdentifier) {
        return aui.a(context, userIdentifier.b());
    }

    static LruSchema a(aui aui) {
        return aui.b();
    }
}
