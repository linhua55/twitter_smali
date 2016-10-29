package com.twitter.model.media;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.twitter.media.model.AnimatedGifFile;
import com.twitter.media.model.ImageFile;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.model.SegmentedVideoFile;
import com.twitter.media.model.VideoFile;
import com.twitter.util.ao;
import com.twitter.util.j;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.l;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import defpackage.cvi;
import java.io.File;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class EditableMedia<FILE extends MediaFile> implements Parcelable {
    public static final n<EditableMedia> j;
    private final Uri a;
    private final MediaSource b;
    public final FILE k;

    public abstract float bm_();

    public abstract boolean bn_();

    static {
        j = s.a(l.a(EditableAnimatedGif.class, b.a), l.a(EditableImage.class, d.a), l.a(EditableSegmentedVideo.class, g.a), l.a(EditableVideo.class, i.a));
    }

    public static EditableMedia a(Context context, Uri uri, MediaType mediaType, MediaSource mediaSource) {
        j.c();
        if (mediaType == MediaType.UNKNOWN) {
            String a = cvi.a(context, uri);
            if (a != null) {
                mediaType = MediaType.a(a);
            }
        }
        File c = ao.c(context, uri);
        if (c == null) {
            return null;
        }
        MediaFile a2 = MediaFile.a(c, mediaType);
        if (a2 != null) {
            return a(a2, mediaSource);
        }
        return null;
    }

    public static EditableMedia a(MediaFile mediaFile, Uri uri, MediaSource mediaSource) {
        switch (e.a[mediaFile.f.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return new EditableImage((ImageFile) mediaFile, uri, mediaSource);
            case WireMessage.WIRE_CONTROL /*2*/:
                return new EditableAnimatedGif((AnimatedGifFile) mediaFile, uri, mediaSource);
            case WireMessage.WIRE_AUTH /*3*/:
                return new EditableVideo((VideoFile) mediaFile, uri, mediaSource);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return new EditableSegmentedVideo((SegmentedVideoFile) mediaFile, uri, mediaSource);
            default:
                throw new IllegalArgumentException("Unknown media type");
        }
    }

    public static EditableMedia a(MediaFile mediaFile, MediaSource mediaSource) {
        return a(mediaFile, mediaFile.a(), mediaSource);
    }

    protected EditableMedia(FILE file, Uri uri, MediaSource mediaSource) {
        this.k = file;
        this.a = uri;
        this.b = mediaSource;
    }

    public Uri d() {
        return this.a;
    }

    public Uri e() {
        return this.k.a();
    }

    public Size f() {
        return this.k.e;
    }

    public MediaType g() {
        return this.k.f;
    }

    public MediaSource h() {
        return this.b;
    }

    public boolean i() {
        j.c();
        return this.k.b();
    }

    public com.twitter.util.concurrent.j<Boolean> j() {
        return this.k.c();
    }

    public boolean a(EditableMedia editableMedia) {
        return this.k.d.equals(editableMedia.k.d);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof EditableMedia) && b((EditableMedia) obj));
    }

    public boolean b(EditableMedia editableMedia) {
        return this == editableMedia || (editableMedia != null && this.a.equals(editableMedia.a) && this.k.a(editableMedia.k));
    }

    public int hashCode() {
        return ((this.k.hashCode() + 0) * 31) + this.a.hashCode();
    }

    public int describeContents() {
        return 0;
    }

    EditableMedia(Parcel parcel) {
        this.k = (MediaFile) parcel.readParcelable(EditableMedia.class.getClassLoader());
        this.a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.b = (MediaSource) parcel.readParcelable(MediaSource.class.getClassLoader());
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.k, i);
        parcel.writeParcelable(this.a, i);
        parcel.writeParcelable(this.b, i);
    }
}
