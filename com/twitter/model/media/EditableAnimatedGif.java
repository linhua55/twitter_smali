package com.twitter.model.media;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.media.model.AnimatedGifFile;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class EditableAnimatedGif extends EditableMedia<AnimatedGifFile> {
    public static final Creator<EditableAnimatedGif> CREATOR;
    public static final n<EditableAnimatedGif> a;

    static {
        a = b.a;
        CREATOR = new a();
    }

    public EditableAnimatedGif(AnimatedGifFile animatedGifFile, MediaSource mediaSource) {
        this(animatedGifFile, animatedGifFile.a(), mediaSource);
    }

    public EditableAnimatedGif(AnimatedGifFile animatedGifFile, Uri uri, MediaSource mediaSource) {
        super(animatedGifFile, uri, mediaSource);
    }

    public float bm_() {
        return ((AnimatedGifFile) this.k).e.e();
    }

    EditableAnimatedGif(Parcel parcel) {
        super(parcel);
    }

    public boolean bn_() {
        return false;
    }
}
