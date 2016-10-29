package com.twitter.media.model;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Parcel;
import android.os.Parcelable;
import com.twitter.config.d;
import com.twitter.media.ImageInfo;
import com.twitter.media.MediaUtils;
import com.twitter.platform.PlatformContext;
import com.twitter.util.ao;
import com.twitter.util.collection.i;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.c;
import com.twitter.util.j;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.n;
import defpackage.bbn;
import defpackage.cun;
import defpackage.cvi;
import java.io.File;
import java.util.concurrent.Callable;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class MediaFile implements Parcelable {
    public static final n<MediaFile> b;
    public static final i<MediaFile> c;
    private boolean a;
    public final File d;
    public final Size e;
    public final MediaType f;

    static {
        b = new k(null);
        c = new g();
    }

    public static <T extends MediaFile> T a(File file, MediaType mediaType) {
        j.c();
        if (file.exists()) {
            if (mediaType == MediaType.UNKNOWN) {
                String a = cun.a(file.getPath());
                if ("segv".equals(a)) {
                    mediaType = MediaType.SEGMENTED_VIDEO;
                } else {
                    a = cvi.c(a);
                    if (a != null) {
                        mediaType = MediaType.a(a);
                    }
                }
            }
            switch (j.a[mediaType.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    return ImageFile.a(file);
                case WireMessage.WIRE_CONTROL /*2*/:
                    return VideoFile.a(file);
                case WireMessage.WIRE_AUTH /*3*/:
                    return SegmentedVideoFile.a(file);
                default:
                    if (!d.a("animated_content_composer_enabled") && mediaType == MediaType.ANIMATED_GIF) {
                        return ImageFile.a(file);
                    }
                    try {
                        ImageInfo a2 = MediaUtils.a(file);
                        if (a2 != null) {
                            Size a3 = Size.a(a2.width, a2.height);
                            return a2.isAnimated ? new AnimatedGifFile(file, a3) : new ImageFile(file, a3);
                        } else {
                            if (mediaType == MediaType.ANIMATED_GIF) {
                                return ImageFile.a(file);
                            }
                            return ImageFile.a(file);
                        }
                    } catch (Throwable th) {
                        bbn.a(th);
                    }
                    break;
            }
        }
        return null;
    }

    public static <T extends MediaFile> T a(Context context, Uri uri, MediaType mediaType) {
        j.c();
        File c = ao.c(context, uri);
        return c != null ? a(c, mediaType) : null;
    }

    public static <T extends MediaFile> com.twitter.util.concurrent.j<T> b(Context context, Uri uri, MediaType mediaType) {
        return a(new h(context.getApplicationContext(), uri, mediaType));
    }

    private static <T extends MediaFile> com.twitter.util.concurrent.j<T> a(Callable<T> callable) {
        return new c().a(AsyncTask.THREAD_POOL_EXECUTOR).a((Callable) callable).a(new i()).a();
    }

    protected MediaFile(File file, Size size, MediaType mediaType) {
        this.d = file;
        this.e = size;
        this.f = mediaType;
    }

    public Uri a() {
        return Uri.fromFile(this.d);
    }

    public boolean b() {
        j.c();
        if (!this.a) {
            this.a = PlatformContext.f().e().b(this.d);
        }
        return this.a;
    }

    public com.twitter.util.concurrent.j<Boolean> c() {
        if (this.a) {
            return ObservablePromise.a(Boolean.valueOf(true));
        }
        this.a = true;
        return PlatformContext.f().e().c(this.d);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof MediaFile) && a((MediaFile) obj));
    }

    public boolean a(MediaFile mediaFile) {
        return this == mediaFile || (mediaFile != null && mediaFile.d.equals(this.d) && mediaFile.e.d(this.e) && mediaFile.f == this.f);
    }

    public int hashCode() {
        return ((((this.f.hashCode() + 0) * 31) + this.e.hashCode()) * 31) + this.d.hashCode();
    }

    public int describeContents() {
        return 0;
    }

    protected MediaFile(Parcel parcel) {
        this.d = new File(parcel.readString());
        this.e = (Size) parcel.readParcelable(Size.class.getClassLoader());
        this.f = MediaType.a(parcel.readInt());
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.d.getPath());
        parcel.writeParcelable(this.e, i);
        parcel.writeInt(this.f.typeId);
    }
}
