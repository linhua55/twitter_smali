package com.twitter.media.model;

import com.twitter.util.math.Size;
import java.io.File;
import java.io.Reader;

@Deprecated
/* compiled from: Twttr */
public abstract class e {
    public static AnimatedGifFile a(File file, Size size) {
        return new AnimatedGifFile(file, size);
    }

    public static ImageFile b(File file, Size size) {
        return new ImageFile(file, size);
    }

    public static SegmentedVideoFile a(File file, Reader reader) {
        return SegmentedVideoFile.a(file, reader);
    }

    public static VideoFile a(File file, int i, Size size) {
        return new VideoFile(file, i, size);
    }
}
