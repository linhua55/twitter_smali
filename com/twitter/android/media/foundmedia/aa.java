package com.twitter.android.media.foundmedia;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.media.MediaSource;
import com.twitter.model.media.foundmedia.FoundMediaProvider;
import com.twitter.util.object.e;

/* compiled from: Twttr */
class aa implements OnClickListener {
    final /* synthetic */ GifPreviewActivityFragment a;

    aa(GifPreviewActivityFragment gifPreviewActivityFragment) {
        this.a = gifPreviewActivityFragment;
    }

    public void onClick(View view) {
        if (this.a.a != null) {
            MediaSource c = this.a.a.c();
            String b = c.b();
            if (b != null) {
                FoundMediaAttributionDialogFragment.a(this.a.getActivity().getSupportFragmentManager(), b, (FoundMediaProvider) e.a(c.c()), null);
            }
        }
    }
}
