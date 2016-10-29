package com.twitter.android.profilecompletionmodule.chooseheader;

import com.twitter.media.model.MediaFile;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.MediaSource;
import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class d implements e<MediaFile> {
    final /* synthetic */ b a;

    d(b bVar) {
        this.a = bVar;
    }

    public void a(MediaFile mediaFile) {
        if (mediaFile != null) {
            this.a.c = mediaFile.a().toString();
            ((ChooseHeaderScreen) this.a.d()).setHeader(this.a.c);
            this.a.a("crop", "success");
            if (this.a.d != null) {
                this.a.d.j();
            }
            this.a.d = (EditableImage) EditableImage.a(mediaFile, MediaSource.b);
            this.a.k();
            return;
        }
        this.a.u();
    }
}
