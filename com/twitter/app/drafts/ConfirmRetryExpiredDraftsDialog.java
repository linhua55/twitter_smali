package com.twitter.app.drafts;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import com.twitter.android.client.tweetuploadmanager.TweetUploadManager;
import com.twitter.android.client.tweetuploadmanager.b;
import com.twitter.app.common.base.BaseDialogFragment;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.provider.v;
import com.twitter.util.h;

/* compiled from: Twttr */
public class ConfirmRetryExpiredDraftsDialog extends BaseDialogFragment {
    private long[] a;

    public static void a(FragmentManager fragmentManager, long[] jArr) {
        h.a();
        new ConfirmRetryExpiredDraftsDialog().a(jArr).show(fragmentManager, "ConfirmRestartExpiredDrafts");
    }

    private ConfirmRetryExpiredDraftsDialog a(long[] jArr) {
        this.a = jArr;
        return this;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (bundle != null) {
            this.a = bundle.getLongArray("expiredDraftIds");
        }
        if (this.a == null) {
            this.a = new long[0];
        }
        return new Builder(getActivity()).setMessage(getResources().getString(2131364024, new Object[]{Integer.valueOf(this.a.length)})).setNegativeButton(2131363491, new b(this)).setPositiveButton(2131362017, new a(this)).create();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLongArray("expiredDraftIds", this.a);
    }

    private void c() {
        Context applicationContext = getActivity().getApplicationContext();
        v a = v.a(applicationContext, bg.a().c().g());
        for (long j : this.a) {
            TweetUploadManager.a(applicationContext, j, false);
            a.a(j, 0, null);
        }
        startActivity(DraftsActivity.a(applicationContext, true));
    }

    private void d() {
        Context applicationContext = getActivity().getApplicationContext();
        az a = az.a(applicationContext);
        Session c = bg.a().c();
        for (long bVar : this.a) {
            a.a(new b(applicationContext, c, bVar));
        }
    }
}
