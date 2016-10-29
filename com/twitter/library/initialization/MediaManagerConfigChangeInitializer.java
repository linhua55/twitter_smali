package com.twitter.library.initialization;

import android.content.Context;
import android.content.res.Configuration;
import com.twitter.library.media.manager.l;
import defpackage.aof;

/* compiled from: Twttr */
public class MediaManagerConfigChangeInitializer extends aof<Configuration> {
    protected void a(Context context, Configuration configuration) {
        l.a(context).onConfigurationChanged(configuration);
    }
}
