package com.twitter.android.media.foundmedia;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.util.v;

/* compiled from: Twttr */
class ab implements OnClickListener {
    final /* synthetic */ GifPreviewActivityFragment a;

    ab(GifPreviewActivityFragment gifPreviewActivityFragment) {
        this.a = gifPreviewActivityFragment;
    }

    public void onClick(View view) {
        if (this.a.b != null) {
            this.a.b.b();
        }
        FragmentActivity activity = this.a.getActivity();
        if (this.a.a == null) {
            activity.setResult(0);
        } else {
            activity.setResult(-1, v.a(this.a.a.d(), null));
        }
        activity.finish();
    }
}
