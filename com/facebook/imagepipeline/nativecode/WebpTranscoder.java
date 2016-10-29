package com.facebook.imagepipeline.nativecode;

import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.util.Base64;
import bq;
import com.facebook.imageformat.ImageFormat;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bx;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@bq
/* compiled from: Twttr */
public class WebpTranscoder {
    private static final boolean a;

    @bq
    private static native void nativeTranscodeWebpToJpeg(InputStream inputStream, OutputStream outputStream, int i) throws IOException;

    @bq
    private static native void nativeTranscodeWebpToPng(InputStream inputStream, OutputStream outputStream) throws IOException;

    static {
        a.a();
        a = a();
    }

    private static boolean a() {
        if (VERSION.SDK_INT < 17) {
            return false;
        }
        if (VERSION.SDK_INT == 17) {
            byte[] decode = Base64.decode("UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA==", 0);
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
            if (!(options.outHeight == 1 && options.outWidth == 1)) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(ImageFormat imageFormat) {
        switch (b.a[imageFormat.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (VERSION.SDK_INT >= 14) {
                    return true;
                }
                return false;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return a;
            case EbmlReader.TYPE_FLOAT /*5*/:
                return false;
            default:
                bx.a(false);
                return false;
        }
    }

    public static void a(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        nativeTranscodeWebpToJpeg((InputStream) bx.a((Object) inputStream), (OutputStream) bx.a((Object) outputStream), i);
    }

    public static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        nativeTranscodeWebpToPng((InputStream) bx.a((Object) inputStream), (OutputStream) bx.a((Object) outputStream));
    }
}
