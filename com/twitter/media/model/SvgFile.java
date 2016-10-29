package com.twitter.media.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.n;
import java.io.File;

/* compiled from: Twttr */
public class SvgFile extends MediaFile {
    public static final Creator<SvgFile> CREATOR;
    public static final n<SvgFile> a;

    static {
        a = new s();
        CREATOR = new r();
    }

    SvgFile(File file, Size size) {
        super(file, size, MediaType.e);
    }

    SvgFile(Parcel parcel) {
        super(parcel);
    }

    public static SvgFile a(File file, Size size) {
        return new SvgFile(file, size);
    }
}
