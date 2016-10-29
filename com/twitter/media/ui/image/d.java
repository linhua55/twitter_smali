package com.twitter.media.ui.image;

import com.twitter.media.request.ImageRequester;
import com.twitter.media.request.a;
import java.io.File;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class d implements Callable<File> {
    final /* synthetic */ ImageRequester a;
    final /* synthetic */ a b;
    final /* synthetic */ BaseMediaImageView c;

    d(BaseMediaImageView baseMediaImageView, ImageRequester imageRequester, a aVar) {
        this.c = baseMediaImageView;
        this.a = imageRequester;
        this.b = aVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public File a() throws Exception {
        return this.a.b(this.b);
    }
}
