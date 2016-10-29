package com.twitter.android.moments.ui.guide;

import adn;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import com.twitter.android.moments.data.s;
import com.twitter.android.moments.data.z;
import com.twitter.android.moments.ui.animation.MomentsActivityTransition;
import com.twitter.android.moments.ui.animation.MomentsActivityTransition$Type;
import com.twitter.android.moments.ui.fullscreen.MomentsFullScreenPagerActivity;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.model.moments.MomentGuideSectionType;
import com.twitter.model.moments.k;
import com.twitter.util.math.Size;
import cql;

/* compiled from: Twttr */
class e {
    private final Context a;
    private final adn b;
    private final s c;
    private final s d;
    private boolean e;

    e(Context context, adn adn, s sVar, s sVar2) {
        this.a = context;
        this.b = adn;
        this.c = sVar;
        this.d = sVar2;
    }

    public void a() {
        this.e = false;
    }

    public <V extends View & com.twitter.media.ui.image.s> void a(long j, MomentGuideSectionType momentGuideSectionType, MomentModule momentModule, V v) {
        if (!this.e) {
            b(j, momentGuideSectionType, momentModule, v);
        }
    }

    @VisibleForTesting
    <V extends View & com.twitter.media.ui.image.s> void b(long j, MomentGuideSectionType momentGuideSectionType, MomentModule momentModule, V v) {
        this.e = true;
        this.c.put(Long.valueOf(j), Boolean.valueOf(false));
        this.d.put(Long.valueOf(j), Boolean.valueOf(true));
        this.b.a(momentGuideSectionType).c(j);
        Intent b = MomentsFullScreenPagerActivity.b(this.a, j);
        if (((com.twitter.media.ui.image.s) v).r()) {
            k c;
            MomentsActivityTransition$Type momentsActivityTransition$Type = momentGuideSectionType == MomentGuideSectionType.c ? MomentsActivityTransition$Type.THUMBNAIL_TRANSITION : MomentsActivityTransition$Type.HERO_OR_CAROUSEL_TRANSITION;
            if (momentModule instanceof com.twitter.model.moments.viewmodels.e) {
                c = ((com.twitter.model.moments.viewmodels.e) momentModule).c();
            } else {
                c = null;
            }
            MomentsActivityTransition.a(b, momentModule.b(), Size.a(v), z.a(momentModule), c, momentsActivityTransition$Type);
            cql.a((Activity) this.a, b, v);
            return;
        }
        this.a.startActivity(b);
    }
}
