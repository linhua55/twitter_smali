package com.twitter.media.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.media.decoder.ImageDecoder;
import com.twitter.util.j;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.n;
import java.io.File;

/* compiled from: Twttr */
public class ImageFile extends MediaFile {
    public static final Creator<ImageFile> CREATOR;
    public static final n<ImageFile> a;

    static {
        a = new d(null);
        CREATOR = new c();
    }

    public static ImageFile a(File file) {
        j.c();
        Size c = ImageDecoder.a(file).c();
        if (c.c()) {
            return null;
        }
        return new ImageFile(file, c);
    }

    public static ImageFile a(AnimatedGifFile animatedGifFile) {
        return new ImageFile(animatedGifFile.d, animatedGifFile.e);
    }

    ImageFile(File file, Size size) {
        super(file, size, MediaType.IMAGE);
    }

    ImageFile(Parcel parcel) {
        super(parcel);
    }
}
