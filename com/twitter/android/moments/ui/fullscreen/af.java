package com.twitter.android.moments.ui.fullscreen;

import android.content.res.Resources;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentManager;
import com.twitter.app.common.base.BaseDialogFragment;
import com.twitter.model.moments.a;
import cxj;
import cyw;
import rx.w;

/* compiled from: Twttr */
public class af {
    public cyw<Integer, w<Boolean>> a(Resources resources, FragmentManager fragmentManager, a aVar) {
        return new ag(this, resources, aVar, fragmentManager);
    }

    @VisibleForTesting
    cxj<BaseDialogFragment> a(Resources resources, String str) {
        return new ah(this, resources, str);
    }

    @VisibleForTesting
    cxj<BaseDialogFragment> b(Resources resources, String str) {
        return new ai(this, resources, str);
    }
}
