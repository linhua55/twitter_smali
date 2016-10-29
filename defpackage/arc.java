package defpackage;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import aqj;
import aql;
import com.twitter.android.io;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.app.common.base.n;
import com.twitter.app.common.inject.w;

/* compiled from: Twttr */
/* renamed from: arc */
public class arc extends w {
    aqi a;

    @SuppressLint({"InflateParams"})
    public arc(FragmentActivity fragmentActivity, LayoutInflater layoutInflater, Bundle bundle, n nVar, MediaAttachmentController mediaAttachmentController) {
        super(bundle);
        if (io.a()) {
            a(layoutInflater.inflate(2130969483, null));
            this.a = new aql();
            return;
        }
        a(layoutInflater.inflate(2130969473, null));
        this.a = new aqo(aO_().findViewById(2131952725), fragmentActivity, bundle, nVar, mediaAttachmentController, new aqj(aO_().findViewById(2131952424), fragmentActivity.getResources().getDimensionPixelSize(2131690566)));
        a(2131952725, this.a.o());
    }

    public aqi d() {
        return this.a;
    }
}
