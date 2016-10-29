package com.twitter.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.config.AppConfig;
import com.twitter.library.client.bg;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.c;
import com.twitter.util.concurrent.f;
import com.twitter.util.concurrent.i;

/* compiled from: Twttr */
class az extends BroadcastReceiver {
    private az() {
    }

    public void onReceive(Context context, Intent intent) {
        if (AppConfig.m().c()) {
            String str = "TwitterAndroid/" + c.c(context);
            String str2 = Build.MODEL + "/" + VERSION.RELEASE;
            TwitterUser f = bg.a().c().f();
            String str3 = f == null ? TtmlNode.ANONYMOUS_REGION_ID : f.k;
            OpenUriHelper.a(context, Uri.parse(context.getString(2131364274, new Object[]{str, str2, str3})));
            return;
        }
        av a = av.a(context);
        a.a(context.getResources().getString(2131364301), TtmlNode.ANONYMOUS_REGION_ID, a.b() + "\n\n" + a.d() + "\n\n" + a.e() + "\n\n", true).b(new f().a(i.b).a(new ba(this, context)));
    }
}
