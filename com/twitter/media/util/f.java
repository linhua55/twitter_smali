package com.twitter.media.util;

import android.media.ExifInterface;
import com.twitter.util.SynchronizedDateFormat;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* compiled from: Twttr */
public class f {
    private static final SimpleDateFormat a;

    static {
        a = new SynchronizedDateFormat("yyyy:MM:dd HH:mm:ss");
        a.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public static h a(File file, boolean z) {
        try {
            return new h(file.getAbsolutePath(), z);
        } catch (Throwable th) {
            return null;
        }
    }

    public static boolean a(File file, File file2, ImageOrientation imageOrientation) {
        try {
            h a = a(file, true);
            if (a != null) {
                h a2 = a(file2, false);
                if (a2 != null) {
                    a2.a(a);
                    if (imageOrientation != ImageOrientation.UNDEFINED) {
                        a2.a(imageOrientation);
                    }
                    a2.saveAttributes();
                    return true;
                }
            }
        } catch (Throwable th) {
        }
        return false;
    }

    public static boolean a(File file, int i) {
        if (i % 360 == 0) {
            return true;
        }
        if (i % 90 != 0) {
            return false;
        }
        return a(file, a(file).c(i));
    }

    public static ImageOrientation a(File file) {
        if (file == null) {
            return ImageOrientation.UNDEFINED;
        }
        try {
            return ImageOrientation.b(new ExifInterface(file.getAbsolutePath()).getAttributeInt("Orientation", 0));
        } catch (Throwable th) {
            return ImageOrientation.UNDEFINED;
        }
    }

    public static boolean a(File file, ImageOrientation imageOrientation) {
        return a(file, imageOrientation, false);
    }

    public static boolean a(File file, ImageOrientation imageOrientation, boolean z) {
        try {
            h a = a(file, true);
            if (a != null) {
                a.a(imageOrientation);
                if (z) {
                    a.setAttribute("DateTime", a.format(new Date(file.lastModified())));
                }
                a.saveAttributes();
                return true;
            }
        } catch (Throwable th) {
        }
        return false;
    }
}
