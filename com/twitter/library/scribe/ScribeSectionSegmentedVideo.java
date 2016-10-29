package com.twitter.library.scribe;

import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.media.model.SegmentedVideoFile;
import com.twitter.model.media.EditableSegmentedVideo;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class ScribeSectionSegmentedVideo extends ScribeSection {
    public static final Creator<ScribeSectionSegmentedVideo> CREATOR;
    private static final String[] a;

    static {
        CREATOR = new ah();
        a = new String[]{"event_namespace", "media_count", "media_position", "original_media_position", "orientation", "source", "torch_active", "duration_ms"};
    }

    public ScribeSectionSegmentedVideo() {
        super(null, a.length);
    }

    public ScribeSectionSegmentedVideo(Parcel parcel) {
        super(parcel);
    }

    public ScribeSectionSegmentedVideo(EditableSegmentedVideo editableSegmentedVideo) {
        int i = 1;
        this();
        SegmentedVideoFile segmentedVideoFile = (SegmentedVideoFile) editableSegmentedVideo.k;
        Size size = segmentedVideoFile.e;
        c(size.a() > size.b() ? 1 : 0);
        CameraInfo cameraInfo = new CameraInfo();
        Camera.getCameraInfo(segmentedVideoFile.g, cameraInfo);
        if (cameraInfo.facing != 1) {
            i = 0;
        }
        d(i);
        a(segmentedVideoFile.h.size(), 0, (long) segmentedVideoFile.d());
    }

    protected String a(int i) {
        return a[i];
    }

    public ScribeSectionSegmentedVideo b(int i) {
        a(3, (Object) Integer.valueOf(i));
        return this;
    }

    public ScribeSectionSegmentedVideo c(int i) {
        a(4, (Object) Integer.valueOf(i));
        return this;
    }

    public ScribeSectionSegmentedVideo a(boolean z) {
        a(6, (Object) Boolean.valueOf(z));
        return this;
    }

    public ScribeSectionSegmentedVideo d(int i) {
        a(5, (Object) Integer.valueOf(i));
        return this;
    }

    public ScribeSectionSegmentedVideo a(int i, int i2, long j) {
        a(1, (Object) Integer.valueOf(i));
        a(2, (Object) Integer.valueOf(i2));
        a(7, (Object) Long.valueOf(j));
        return this;
    }

    public ScribeSectionSegmentedVideo a(String str) {
        a(0, (Object) new ScribeSectionNamespace(str));
        return this;
    }
}
