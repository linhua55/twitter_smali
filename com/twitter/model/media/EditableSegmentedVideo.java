package com.twitter.model.media;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.media.model.SegmentedVideoFile;
import com.twitter.util.ab;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class EditableSegmentedVideo extends EditableMedia<SegmentedVideoFile> implements l {
    public static final Creator<EditableSegmentedVideo> CREATOR;
    public static final n<EditableSegmentedVideo> a;
    private com.twitter.model.av.n b;

    static {
        a = g.a;
        CREATOR = new f();
    }

    public EditableSegmentedVideo(SegmentedVideoFile segmentedVideoFile, MediaSource mediaSource) {
        this(segmentedVideoFile, segmentedVideoFile.a(), mediaSource);
    }

    public EditableSegmentedVideo(SegmentedVideoFile segmentedVideoFile, Uri uri, MediaSource mediaSource) {
        super(segmentedVideoFile, uri, mediaSource);
    }

    public float bm_() {
        return c() ? 1.0f : ((SegmentedVideoFile) this.k).e.e();
    }

    public boolean c() {
        return (((SegmentedVideoFile) this.k).j == 0 || ((SegmentedVideoFile) this.k).j == 8) ? false : true;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof EditableSegmentedVideo) && a((EditableSegmentedVideo) obj));
    }

    public boolean a(EditableSegmentedVideo editableSegmentedVideo) {
        return this == editableSegmentedVideo || (editableSegmentedVideo != null && b(editableSegmentedVideo) && ObjectUtils.a(editableSegmentedVideo.b, this.b));
    }

    public int hashCode() {
        return (super.hashCode() * 31) + ObjectUtils.b(this.b);
    }

    EditableSegmentedVideo(Parcel parcel) {
        super(parcel);
        this.b = (com.twitter.model.av.n) ab.a(parcel, com.twitter.model.av.n.a);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        ab.a(parcel, this.b, com.twitter.model.av.n.a);
    }

    public boolean bn_() {
        return false;
    }

    public com.twitter.model.av.n k() {
        return this.b;
    }

    public void a(com.twitter.model.av.n nVar) {
        this.b = nVar;
    }
}
