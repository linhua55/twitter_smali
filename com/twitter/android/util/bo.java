package com.twitter.android.util;

import android.support.v4.app.FragmentManager;
import com.twitter.app.common.base.BaseDialogFragment;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.internal.android.service.p;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.util.collection.z;
import cxj;
import dbd;
import rx.w;

/* compiled from: Twttr */
public class bo {
    public static w<Boolean> a(cxj<BaseDialogFragment> cxj_com_twitter_app_common_base_BaseDialogFragment, FragmentManager fragmentManager) {
        return w.a(new bp(cxj_com_twitter_app_common_base_BaseDialogFragment, fragmentManager));
    }

    public static <R extends x> w<z<R, aa>> a(R r) {
        return w.a(new bs(r));
    }

    public static <R extends x> w<z<R, aa>> b(R r) {
        return a(r).b(dbd.a(p.a().a(ExecutionClass.a)));
    }
}
