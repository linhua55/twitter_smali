package com.twitter.model.media;

import android.net.Uri;
import com.twitter.media.model.AnimatedGifFile;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class b extends k<EditableAnimatedGif> {
    static final b a;

    protected b() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    static {
        a = new b();
    }

    protected void a(q qVar, EditableAnimatedGif editableAnimatedGif) throws IOException {
        qVar.a(editableAnimatedGif.k, AnimatedGifFile.a).b(editableAnimatedGif.h().a()).b(editableAnimatedGif.d().toString()).a(editableAnimatedGif.h(), MediaSource.a);
    }

    protected EditableAnimatedGif a(p pVar, int i) throws IOException, ClassNotFoundException {
        Uri parse;
        Uri a;
        MediaSource mediaSource;
        AnimatedGifFile animatedGifFile = (AnimatedGifFile) AnimatedGifFile.a.c(pVar);
        String p = pVar.p();
        try {
            String i2 = pVar.i();
            if (i2 != null) {
                parse = Uri.parse(i2);
            } else {
                parse = null;
            }
        } catch (IOException e) {
            parse = null;
        }
        if (parse == null) {
            a = animatedGifFile.a();
        } else {
            a = parse;
        }
        try {
            mediaSource = (MediaSource) MediaSource.a.a(pVar);
        } catch (IOException e2) {
            mediaSource = null;
        }
        if (mediaSource == null) {
            mediaSource = MediaSource.a(p);
        }
        return new EditableAnimatedGif(animatedGifFile, a, mediaSource);
    }
}
