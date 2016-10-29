package com.twitter.android.businessprofiles.gallery;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View.OnClickListener;
import com.twitter.library.av.playback.be;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.model.core.Tweet;
import defpackage.bcw;

/* compiled from: Twttr */
public class f extends ViewHolder {
    public f(MediaImageView mediaImageView) {
        super(mediaImageView);
    }

    public void a(c cVar, OnClickListener onClickListener) {
        MediaImageView mediaImageView = (MediaImageView) this.itemView;
        if (onClickListener != null) {
            mediaImageView.setOnClickListener(onClickListener);
        }
        mediaImageView.setAspectRatio(cVar.a());
        if (mediaImageView.a(cVar.b())) {
            RichImageView richImageView = (RichImageView) mediaImageView.getImageView();
            Tweet d = cVar.d();
            if (be.d(d) || d.L()) {
                richImageView.setOverlayDrawable(bcw.player_overlay);
            } else {
                richImageView.setOverlayDrawable(2130840027);
            }
        }
        mediaImageView.setVisibility(0);
    }
}
