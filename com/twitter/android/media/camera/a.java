package com.twitter.android.media.camera;

import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;

/* compiled from: Twttr */
class a implements i {
    final /* synthetic */ CameraActivity a;

    a(CameraActivity cameraActivity) {
        this.a = cameraActivity;
    }

    public void a(MediaType mediaType, MediaFile mediaFile) {
        this.a.setResult(-1, this.a.getIntent().putExtra("media_type", mediaType).putExtra("media_file", mediaFile));
        this.a.finish();
    }

    public void a() {
        this.a.setResult(0);
        this.a.finish();
    }
}
