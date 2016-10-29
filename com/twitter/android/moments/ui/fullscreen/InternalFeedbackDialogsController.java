package com.twitter.android.moments.ui.fullscreen;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.hardware.SensorManager;
import android.support.annotation.ArrayRes;
import android.support.annotation.StringRes;
import android.view.View;
import com.twitter.config.AppConfig;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.moments.core.ui.widget.capsule.b;
import com.twitter.util.object.e;
import defpackage.bmd;

/* compiled from: Twttr */
public class InternalFeedbackDialogsController implements OnCancelListener, ge {
    private final Context a;
    private final b b;
    private final gd c;
    private boolean d;
    private MomentPage e;

    /* compiled from: Twttr */
    enum FeedbackSentiment {
        POSITIVE(0),
        NEGATIVE(1);
        
        public final int position;

        private FeedbackSentiment(int i) {
            this.position = i;
        }
    }

    /* compiled from: Twttr */
    enum FeedbackType {
        MOMENT(0),
        PAGE(1);
        
        public final int position;

        private FeedbackType(int i) {
            this.position = i;
        }
    }

    public InternalFeedbackDialogsController(Context context, b bVar) {
        this.a = context;
        this.b = bVar;
        if (AppConfig.m().p()) {
            this.c = new gd((SensorManager) context.getSystemService("sensor"));
            this.c.a(this);
            return;
        }
        this.c = null;
    }

    public void a() {
        if (this.c != null) {
            this.c.a();
        }
    }

    public void b() {
        if (this.c != null) {
            this.c.b();
        }
    }

    public void c() {
        this.e = this.b.c();
        if (this.e != null && !this.d) {
            d();
            this.d = true;
        }
    }

    private void d() {
        new Builder(this.a).setItems(this.a.getResources().getStringArray(2131427353), new cj(this)).setTitle(2131364334).setOnCancelListener(this).show();
    }

    private void a(FeedbackType feedbackType) {
        new Builder(this.a).setItems(this.a.getResources().getStringArray(2131427354), new ck(this, feedbackType)).setTitle(2131364340).setOnCancelListener(this).show();
    }

    private void a(FeedbackType feedbackType, FeedbackSentiment feedbackSentiment) {
        new Builder(this.a).setItems(this.a.getResources().getStringArray(c(feedbackType, feedbackSentiment)), new cl(this, feedbackType, feedbackSentiment)).setTitle(b(feedbackType, feedbackSentiment)).setOnCancelListener(this).show();
    }

    private void a(FeedbackType feedbackType, FeedbackSentiment feedbackSentiment, int i) {
        new Builder(this.a).setView(View.inflate(this.a, 2130969012, null)).setPositiveButton(2131363218, new cm(this, feedbackType, feedbackSentiment, i)).setOnCancelListener(this).show();
    }

    @StringRes
    private static int b(FeedbackType feedbackType, FeedbackSentiment feedbackSentiment) {
        if (feedbackType == FeedbackType.MOMENT) {
            if (feedbackSentiment == FeedbackSentiment.POSITIVE) {
                return 2131364337;
            }
            return 2131364336;
        } else if (feedbackSentiment == FeedbackSentiment.POSITIVE) {
            return 2131364339;
        } else {
            return 2131364338;
        }
    }

    @ArrayRes
    private static int c(FeedbackType feedbackType, FeedbackSentiment feedbackSentiment) {
        if (feedbackType == FeedbackType.MOMENT) {
            if (feedbackSentiment == FeedbackSentiment.POSITIVE) {
                return 2131427357;
            }
            return 2131427355;
        } else if (feedbackSentiment == FeedbackSentiment.POSITIVE) {
            return 2131427358;
        } else {
            return 2131427356;
        }
    }

    private String b(FeedbackType feedbackType, FeedbackSentiment feedbackSentiment, int i) {
        return this.a.getResources().getStringArray(c(feedbackType, feedbackSentiment))[i];
    }

    private void a(FeedbackType feedbackType, FeedbackSentiment feedbackSentiment, int i, String str) {
        az a = az.a(this.a);
        long m = (!(this.e instanceof o) || feedbackType == FeedbackType.MOMENT) ? 0 : ((o) this.e).m();
        a.a(new bmd(this.a, bg.a().c(), ((MomentPage) e.a(this.e)).i(), ((Long) e.a(this.e.f())).longValue(), m, b(feedbackType, feedbackSentiment, i), str), 0, null);
        this.d = false;
    }

    public void onCancel(DialogInterface dialogInterface) {
        this.d = false;
    }
}
