package com.twitter.android.media.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.media.widget.AnimatedGifView;
import com.twitter.media.model.AnimatedGifFile;
import com.twitter.media.model.ImageFile;
import com.twitter.media.model.MediaFile;
import com.twitter.model.media.foundmedia.f;

/* compiled from: Twttr */
class am implements OnClickListener {
    final /* synthetic */ GifGalleryView a;

    am(GifGalleryView gifGalleryView) {
        this.a = gifGalleryView;
    }

    public void onClick(View view) {
        if (this.a.f != null) {
            MediaFile mediaFile = ((AnimatedGifView) view).getMediaFile();
            if (mediaFile != null) {
                f fVar = (f) view.getTag(2131951662);
                aq aqVar = this.a.f;
                if (!this.a.e && (mediaFile instanceof AnimatedGifFile)) {
                    mediaFile = ImageFile.a((AnimatedGifFile) mediaFile);
                }
                aqVar.a(fVar, mediaFile);
            }
        }
    }
}
