package com.twitter.library.media.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.SystemClock;
import bbn;
import bbu;
import cfb;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.client.bg;
import com.twitter.library.media.util.transcode.d;
import com.twitter.library.scribe.ScribeSectionImportedVideo;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.decoder.ImageDecoder;
import com.twitter.media.filters.g;
import com.twitter.media.model.ImageFile;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.model.SegmentedVideoFile;
import com.twitter.media.model.VideoFile;
import com.twitter.media.service.tasks.CropTask;
import com.twitter.media.service.tasks.VideoStitchTask;
import com.twitter.media.util.ImageOrientation;
import com.twitter.media.util.a;
import com.twitter.media.util.f;
import com.twitter.media.util.r;
import com.twitter.model.media.EditableAnimatedGif;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.EditableSegmentedVideo;
import com.twitter.model.media.EditableVideo;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.o;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.concurrent.c;
import com.twitter.util.concurrent.j;
import com.twitter.util.h;
import com.twitter.util.math.Size;
import defpackage.bxl;
import java.io.File;

/* compiled from: Twttr */
public class t {
    public static final Size a;
    private static final Size b;

    static {
        a = Size.a(1280, 1024);
        b = Size.a(1024);
    }

    public static MediaFile a(Context context, EditableMedia editableMedia) {
        switch (w.a[editableMedia.g().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return a((EditableAnimatedGif) editableMedia);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return a(context, (EditableImage) editableMedia);
            case Util.TYPE_OTHER /*3*/:
                return a((EditableVideo) editableMedia);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return a(context, (EditableSegmentedVideo) editableMedia);
            default:
                return editableMedia.k;
        }
    }

    public static j<MediaFile> b(Context context, EditableMedia editableMedia) {
        return new c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new v(context, editableMedia)).a(new u()).a();
    }

    private static MediaFile a(EditableAnimatedGif editableAnimatedGif) {
        return editableAnimatedGif.k;
    }

    private static MediaFile a(Context context, EditableImage editableImage) {
        h.c();
        k kVar = new k(editableImage);
        File c = kVar.c();
        if (c != null) {
            return MediaFile.a(c, MediaType.b);
        }
        File file;
        Object obj;
        File a;
        Object obj2;
        ImageOrientation a2;
        ImageDecoder b;
        Size f;
        Bitmap b2;
        ImageFile imageFile = (ImageFile) editableImage.k;
        File file2 = imageFile.d;
        com.twitter.util.math.c cVar = editableImage.f;
        cVar = cVar != null ? ImageOrientation.a(editableImage.e).b().a(cVar) : null;
        o e = PlatformContext.f().e();
        if (!(cVar == null || cVar.a())) {
            File a3 = e.a(MediaType.b.extension);
            if (a3 != null) {
                CropTask cropTask = new CropTask(imageFile.a(), a3, cVar, editableImage.e);
                cropTask.d(context);
                if (cropTask.b()) {
                    file = a3;
                    obj = null;
                    if (g.a(context) && (editableImage.b || !g.a(editableImage.c))) {
                        a = e.a(MediaType.b.extension);
                        if (a != null) {
                            if (g.a(context, Uri.fromFile(file), a, 0, 0, editableImage.c, editableImage.b, 1.0f, editableImage.d)) {
                                e.b(a);
                            } else {
                                obj2 = 1;
                                file = a;
                                obj = obj2;
                            }
                        }
                        obj2 = null;
                        obj = obj2;
                    }
                    if (!file.equals(file2)) {
                        a2 = f.a(file);
                        if (obj != null) {
                            a2 = ImageOrientation.b;
                        }
                        f.a(file2, file, a2);
                    }
                    if (!CollectionUtils.b(editableImage.h)) {
                        b = ImageDecoder.a(file).b(true);
                        f = editableImage.f();
                        if (f.a() < 1024 && f.b() < 1024) {
                            b.a(true).c(f.c(b));
                        }
                        b2 = b.b();
                        if (b2 != null) {
                            return null;
                        }
                        new bxl(editableImage).a(context, b2);
                        if (!file.equals(file2)) {
                            PlatformContext.f().e().c(file);
                        }
                        file = a.a(b2, CompressFormat.JPEG, 95);
                        if (file == null) {
                            return null;
                        }
                    }
                    if (!file.equals(file2)) {
                        return imageFile;
                    }
                    c = com.twitter.media.util.j.a(context).a(kVar, file);
                    if (c != null) {
                        e.b(file);
                        file = c;
                    }
                    e.b(file2);
                    return MediaFile.a(file, MediaType.b);
                }
            }
        }
        file = file2;
        obj = null;
        try {
            a = e.a(MediaType.b.extension);
            if (a != null) {
                if (g.a(context, Uri.fromFile(file), a, 0, 0, editableImage.c, editableImage.b, 1.0f, editableImage.d)) {
                    e.b(a);
                } else {
                    obj2 = 1;
                    file = a;
                    obj = obj2;
                    if (file.equals(file2)) {
                        a2 = f.a(file);
                        if (obj != null) {
                            a2 = ImageOrientation.b;
                        }
                        f.a(file2, file, a2);
                    }
                    if (CollectionUtils.b(editableImage.h)) {
                        b = ImageDecoder.a(file).b(true);
                        f = editableImage.f();
                        b.a(true).c(f.c(b));
                        b2 = b.b();
                        if (b2 != null) {
                            return null;
                        }
                        new bxl(editableImage).a(context, b2);
                        if (file.equals(file2)) {
                            PlatformContext.f().e().c(file);
                        }
                        file = a.a(b2, CompressFormat.JPEG, 95);
                        if (file == null) {
                            return null;
                        }
                    }
                    if (!file.equals(file2)) {
                        return imageFile;
                    }
                    c = com.twitter.media.util.j.a(context).a(kVar, file);
                    if (c != null) {
                        e.b(file);
                        file = c;
                    }
                    e.b(file2);
                    return MediaFile.a(file, MediaType.b);
                }
            }
            obj2 = null;
            obj = obj2;
        } catch (Throwable th) {
            bbn.a(th);
        }
        if (file.equals(file2)) {
            a2 = f.a(file);
            if (obj != null) {
                a2 = ImageOrientation.b;
            }
            f.a(file2, file, a2);
        }
        if (CollectionUtils.b(editableImage.h)) {
            b = ImageDecoder.a(file).b(true);
            f = editableImage.f();
            b.a(true).c(f.c(b));
            b2 = b.b();
            if (b2 != null) {
                return null;
            }
            new bxl(editableImage).a(context, b2);
            if (file.equals(file2)) {
                PlatformContext.f().e().c(file);
            }
            file = a.a(b2, CompressFormat.JPEG, 95);
            if (file == null) {
                return null;
            }
        }
        if (!file.equals(file2)) {
            return imageFile;
        }
        c = com.twitter.media.util.j.a(context).a(kVar, file);
        if (c != null) {
            e.b(file);
            file = c;
        }
        e.b(file2);
        return MediaFile.a(file, MediaType.b);
    }

    private static MediaFile a(EditableVideo editableVideo) {
        h.c();
        if (!r.a()) {
            return null;
        }
        VideoFile b = b(editableVideo);
        bbu.a((TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).a(new ScribeSectionImportedVideo(editableVideo).a(b != null ? "video_trimmer::video:transcode:success" : "video_trimmer::video:transcode:failure")));
        return b;
    }

    private static MediaFile a(Context context, EditableSegmentedVideo editableSegmentedVideo) {
        h.c();
        com.twitter.media.util.j a = com.twitter.media.util.j.a(context);
        l lVar = new l(editableSegmentedVideo);
        File c = lVar.c();
        if (c != null) {
            return MediaFile.a(c, MediaType.d);
        }
        c = b(context, editableSegmentedVideo);
        if (c == null) {
            return null;
        }
        File a2 = a.a(lVar, c);
        if (a2 == null) {
            a2 = c;
        }
        return MediaFile.a(a2, MediaType.d);
    }

    @TargetApi(18)
    private static VideoFile b(EditableVideo editableVideo) {
        Size size;
        Size size2 = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        o e = PlatformContext.f().e();
        int i = 3;
        int i2 = 3500000;
        File file = null;
        int i3 = 3;
        float f = 0.9f;
        while (i > 0 && i3 > 0) {
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            long j = (long) ((editableVideo.c - editableVideo.b) * ExoPlayerImplInternal.MSG_SEEK_COMPLETE);
            d dVar = new d(((VideoFile) editableVideo.k).d.getAbsolutePath());
            Size size3 = a;
            d a = dVar.b(38).a(r16).a((long) (editableVideo.b * ExoPlayerImplInternal.MSG_SEEK_COMPLETE), j).a(i2);
            try {
                file = a.b();
                size2 = a.a();
                if (file.length() <= 78643200) {
                    if (file.length() != 0) {
                        cfb.c("VideoFile", "Video " + ((VideoFile) editableVideo.k).d + " transcoded in " + (SystemClock.elapsedRealtime() - elapsedRealtime2) + "ms " + size2);
                        size = size2;
                        break;
                    }
                    i--;
                } else {
                    i2 = 200000 * (((int) (((float) (((long) (78643200 * i2)) / file.length())) * f)) / 200000);
                    i3--;
                    float f2 = f - 0.1f;
                    e.b(file);
                    f = f2;
                }
            } catch (Throwable e2) {
                cfb.c("VideoFile", "Error transcoding file", e2);
                bbn.a(e2);
                if (e2.a()) {
                    size = size2;
                    break;
                }
                i--;
            } catch (InterruptedException e3) {
                size = size2;
            }
        }
        size = size2;
        if (file == null || !file.exists() || file.length() == 0 || r2 == null) {
            cfb.d("VideoFile", "Can't transcode video " + ((VideoFile) editableVideo.k).d);
            e.b(file);
            return null;
        }
        cfb.c("VideoFile", "Video " + ((VideoFile) editableVideo.k).d + " muxed in " + (SystemClock.elapsedRealtime() - elapsedRealtime) + "ms");
        return (VideoFile) MediaFile.a(file, MediaType.d);
    }

    private static File b(Context context, EditableSegmentedVideo editableSegmentedVideo) {
        h.c();
        h.b(!((SegmentedVideoFile) editableSegmentedVideo.k).h.isEmpty());
        File a = PlatformContext.f().e().a(MediaType.d.extension);
        if (a == null) {
            return null;
        }
        if (new VideoStitchTask(((SegmentedVideoFile) editableSegmentedVideo.k).h, a).d(context)) {
            return a;
        }
        return null;
    }
}
