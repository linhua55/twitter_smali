package com.twitter.media.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.n;
import java.io.File;

/* compiled from: Twttr */
public class AnimatedGifFile extends MediaFile {
    public static final Creator<AnimatedGifFile> CREATOR;
    public static final n<AnimatedGifFile> a;

    static {
        a = new b(null);
        CREATOR = new a();
    }

    AnimatedGifFile(File file, Size size) {
        super(file, size, MediaType.c);
    }

    AnimatedGifFile(Parcel parcel) {
        super(parcel);
    }
}
