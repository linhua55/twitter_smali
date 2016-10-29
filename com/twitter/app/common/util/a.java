package com.twitter.app.common.util;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Intent;
import android.content.res.Configuration;

/* compiled from: Twttr */
public interface a extends ActivityLifecycleCallbacks {
    void a(Activity activity, Intent intent);

    void a(Activity activity, Configuration configuration);
}
