package com.twitter.android.twogday;

import android.support.v4.app.FragmentActivity;
import android.widget.ImageView.ScaleType;
import com.twitter.android.dialog.TakeoverDialogFragment;
import com.twitter.android.dialog.r;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.platform.PlatformContext;
import defpackage.bbu;

/* compiled from: Twttr */
public class TwoGDayEndOverlay extends TakeoverDialogFragment {
    public static void a(FragmentActivity fragmentActivity, long j) {
        ((TwoGDayEndOverlay) ((r) ((r) ((r) new b(0).a(ScaleType.CENTER)).a((CharSequence) "Your connection speed is back to its normal speedy self!")).c((CharSequence) "Vroom!")).i()).a(fragmentActivity);
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

    private static void m() {
        c.c(PlatformContext.f().b());
    }

    private static void a(long j) {
        bbu.a((TwitterScribeLog) new TwitterScribeLog(j).b("app:next_billion_day:::end"));
    }
}
