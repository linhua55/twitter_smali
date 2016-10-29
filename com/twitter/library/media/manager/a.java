package com.twitter.library.media.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Movie;
import android.os.HandlerThread;
import bbn;
import com.google.android.exoplayer.util.MpegAudioHeader;
import com.twitter.config.AppConfig;
import com.twitter.media.decoder.ImageDecoder;
import com.twitter.media.model.AnimatedGifFile;
import com.twitter.media.model.ImageFile;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.platform.PlatformContext;
import com.twitter.util.collection.m;
import com.twitter.util.h;
import cus;
import cvi;
import defpackage.bxi;
import defpackage.bxj;
import defpackage.bxk;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
public class a extends t<b, f, d> {
    private static final byte[] g;

    static {
        g = new byte[]{ClosedCaptionCtrl.BACKSPACE, (byte) -7, (byte) 4, (byte) 0, (byte) 10, (byte) 0, (byte) 0, (byte) 0};
    }

    a(String str, Context context, HandlerThread handlerThread, m<String, f> mVar, cus cus, cus cus2) {
        super(str, context, handlerThread, mVar, cus, cus2);
    }

    protected boolean a(f fVar) {
        return true;
    }

    protected d a(b bVar, f fVar, ResourceSource resourceSource) {
        return new d(bVar, fVar, resourceSource);
    }

    protected f a(b bVar, File file) {
        Closeable bxi;
        Throwable th;
        h.c();
        File a;
        try {
            MediaFile mediaFile = bVar.a;
            if (mediaFile == null) {
                mediaFile = MediaFile.a(file, MediaType.a);
                if (mediaFile == null) {
                    return null;
                }
            }
            Bitmap b;
            if (mediaFile instanceof ImageFile) {
                b = ImageDecoder.a(file).a(bVar.u()).b();
                if (b == null) {
                    return null;
                }
                return new g((ImageFile) mediaFile, b);
            }
            AnimatedGifFile animatedGifFile = (AnimatedGifFile) mediaFile;
            bxj bxj = new bxj(animatedGifFile);
            if (bxj.a.size() <= 1) {
                b = ImageDecoder.a(file).a(bVar.u()).b();
                if (b == null) {
                    return null;
                }
                return new g(ImageFile.a(animatedGifFile), b);
            }
            Movie movie;
            Movie decodeFile;
            if (bxj.c) {
                a = PlatformContext.f().e().a(MediaType.c.extension);
                if (a == null) {
                    return null;
                }
                a(bxj, file, a);
                decodeFile = Movie.decodeFile(a.getAbsolutePath());
                if (decodeFile == null || decodeFile.duration() == 0) {
                    a.delete();
                    return null;
                }
                a.delete();
                movie = decodeFile;
            } else {
                decodeFile = Movie.decodeFile(file.getAbsolutePath());
                if (decodeFile == null) {
                    return null;
                }
                if (decodeFile.duration() != bxj.b) {
                    try {
                        bxi = new bxi(animatedGifFile, bxj.a);
                        try {
                            movie = Movie.decodeStream(bxi);
                            if (movie == null || movie.duration() == 0) {
                                cvi.a(bxi);
                                return null;
                            }
                            cvi.a(bxi);
                        } catch (Throwable th2) {
                            th = th2;
                            cvi.a(bxi);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        bxi = null;
                        cvi.a(bxi);
                        throw th;
                    }
                }
                movie = decodeFile;
            }
            return new e(animatedGifFile, bxj, movie);
        } catch (Throwable th4) {
            if (AppConfig.m().a()) {
                RuntimeException runtimeException = new RuntimeException(th4);
            } else {
                bbn.a(th4);
                return null;
            }
        }
    }

    private void a(bxj bxj, File file, File file2) throws IOException {
        Closeable fileInputStream = new FileInputStream(file);
        Closeable fileOutputStream = new FileOutputStream(file2);
        try {
            byte[] bArr = new byte[MpegAudioHeader.MAX_FRAME_SIZE_BYTES];
            int i = 0;
            for (bxk bxk : bxj.a) {
                int i2;
                if (bxk.e) {
                    a(fileInputStream, fileOutputStream, bArr, bxk.d - i);
                    i2 = bxk.d;
                    fileOutputStream.write(g);
                } else {
                    i2 = i;
                }
                i = i2;
            }
            cvi.a(fileInputStream, fileOutputStream, MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
        } finally {
            cvi.a(fileOutputStream);
            cvi.a(fileInputStream);
        }
    }

    private static void a(InputStream inputStream, OutputStream outputStream, byte[] bArr, int i) throws IOException {
        int length = bArr.length;
        while (i > 0) {
            int read = inputStream.read(bArr, 0, Math.min(i, length));
            outputStream.write(bArr, 0, read);
            i -= read;
        }
    }
}
