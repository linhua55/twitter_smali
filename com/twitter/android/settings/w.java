package com.twitter.android.settings;

import android.content.Context;
import android.widget.Toast;
import bbn;
import com.twitter.library.api.ai;
import com.twitter.library.api.at;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ch;
import com.twitter.library.provider.cj;
import com.twitter.library.provider.di;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.timeline.bp;
import java.io.IOException;

/* compiled from: Twttr */
public class w {
    public static void a(Context context) {
        TwitterUser f = bg.a().c().f();
        di a = di.a(context, f.bf_());
        try {
            a.a((ch) new cj().a(a(context, f)).a(f.bf_()).e(true).a(new bp().g(true).a()).a(0).d(true).q());
            Toast.makeText(context, "Injected carousel. It should appear at the top of the timeline", 0).show();
        } catch (Throwable e) {
            bbn.a(e);
        }
    }

    public static ai a(Context context, TwitterUser twitterUser) throws IOException {
        return at.b(at.a(context.getAssets().open("moments/home_suggested_moments_injection_with_video_debug.json")), twitterUser);
    }
}
