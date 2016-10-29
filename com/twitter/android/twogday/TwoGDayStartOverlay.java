package com.twitter.android.twogday;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import android.widget.ImageView.ScaleType;
import com.twitter.android.bp;
import com.twitter.android.dialog.TakeoverDialogFragment;
import com.twitter.android.dialog.r;
import com.twitter.library.client.bg;
import com.twitter.library.media.manager.l;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.platform.PlatformContext;
import defpackage.bbu;

/* compiled from: Twttr */
public class TwoGDayStartOverlay extends TakeoverDialogFragment {
    public static void a(FragmentActivity fragmentActivity, long j) {
        ((TwoGDayStartOverlay) ((r) ((r) ((r) new e(0).a(ScaleType.CENTER)).a((CharSequence) "For 2G Day, bandwidth will be limited to 2G speeds. \nLearn more at go/nbd")).c((CharSequence) "OK")).i()).a(fragmentActivity);
        a(j);
    }

    protected void c() {
        super.c();
        m();
    }

    protected final void d() {
        super.d();
        m();
    }

    private void m() {
        Context context = (Context) this.a.get();
        if (context != null) {
            c.b(PlatformContext.f().b());
            a(context.getApplicationContext());
        }
    }

    private static void a(Context context) {
        di.a(context, bg.a().c().g()).c();
        l.a(context).g();
        bp.a();
    }

    private static void a(long j) {
        bbu.a((TwitterScribeLog) new TwitterScribeLog(j).b("app:next_billion_day:::start"));
    }
}
