package com.twitter.android.av;

import android.content.res.Configuration;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.widget.ao;
import com.twitter.library.av.control.b;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.s;
import com.twitter.model.av.Partner;

/* compiled from: Twttr */
public interface i extends OnClickListener, ao, b, s {
    void a(AVPlayerAttachment aVPlayerAttachment, Configuration configuration);

    View getContentView();

    void setPartner(Partner partner);
}
