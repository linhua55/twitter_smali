package com.twitter.android.av;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.twitter.android.AVMediaPlayerActivity;
import com.twitter.android.FullscreenMediaPlayerActivity;
import com.twitter.android.av.watchmode.WatchModeActivity;
import com.twitter.android.av.watchmode.s;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.app.common.base.u;
import com.twitter.config.d;
import com.twitter.library.av.ao;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class bd extends ao<Context> {
    public /* synthetic */ void a(Object obj) {
        b((Context) obj);
    }

    public void b(Context context) {
        Runnable e = e(context);
        if ((context instanceof Activity) && this.g) {
            OpenUriHelper.a().a((Activity) context, e);
        } else {
            e.run();
        }
    }

    private Intent c(Context context) {
        if ((context instanceof Activity) || !this.e) {
            if (this.e) {
                this.b = 9155;
            }
            return a(context);
        }
        throw new IllegalArgumentException("Starting " + bd.class.getSimpleName() + " for result requires an " + "Activity Context");
    }

    protected Intent a(Context context) {
        Tweet b = this.j == null ? null : this.j.b();
        if (s.a(context, this.j)) {
            return WatchModeActivity.a(context, this.j, this.a);
        }
        if (!d.a("android_media_playback_use_gallery_activity") || b == null) {
            return d(context);
        }
        return new u().d(this.f).a(context, FullscreenMediaPlayerActivity.class).putExtra("statusId", b.H).putExtra("association", this.a).putExtra("is_from_dock", this.c).putExtra("is_from_inline", this.d).putExtra("show_tw", false);
    }

    private Intent d(Context context) {
        return b(new u().d(this.f).a(context, AVMediaPlayerActivity.class));
    }

    protected final Intent b(Intent intent) {
        return intent.putExtra("ms", this.j).putExtra("association", this.a).putExtra("is_from_dock", this.c).putExtra("is_from_inline", this.d);
    }

    private Runnable e(Context context) {
        return new be(this, context);
    }
}
