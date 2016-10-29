package com.twitter.model.media;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.media.model.VideoFile;
import com.twitter.media.util.d;
import com.twitter.media.util.e;
import com.twitter.util.ab;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class EditableVideo extends EditableMedia<VideoFile> implements l {
    public static final Creator<EditableVideo> CREATOR;
    public static final n<EditableVideo> a;
    public int b;
    public int c;
    private com.twitter.model.av.n d;

    static {
        a = i.a;
        CREATOR = new h();
    }

    public EditableVideo(VideoFile videoFile, MediaSource mediaSource) {
        this(videoFile, videoFile.a(), mediaSource);
    }

    public EditableVideo(VideoFile videoFile, Uri uri, MediaSource mediaSource) {
        super(videoFile, uri, mediaSource);
        e a = d.a(videoFile.g);
        this.b = a.a();
        this.c = a.b();
    }

    public boolean c() {
        return this.b > 0 || this.c < ((VideoFile) this.k).g || this.c - this.b > d.b();
    }

    public int l() {
        return this.c - this.b;
    }

    public float bm_() {
        return ((VideoFile) this.k).e.e();
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof EditableVideo) && a((EditableVideo) obj));
    }

    public boolean a(EditableVideo editableVideo) {
        return this == editableVideo || (editableVideo != null && b(editableVideo) && editableVideo.b == this.b && editableVideo.c == this.c && ObjectUtils.a(editableVideo.d, this.d));
    }

    public int hashCode() {
        return (((((super.hashCode() * 31) + this.b) * 31) + this.c) * 31) + ObjectUtils.b(this.d);
    }

    EditableVideo(Parcel parcel) {
        super(parcel);
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = (com.twitter.model.av.n) ab.a(parcel, com.twitter.model.av.n.a);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        ab.a(parcel, this.d, com.twitter.model.av.n.a);
    }

    public boolean bn_() {
        return this.b > 0 || this.c < ((VideoFile) this.k).g;
    }

    public com.twitter.model.av.n k() {
        return this.d;
    }

    public void a(com.twitter.model.av.n nVar) {
        this.d = nVar;
    }
}
