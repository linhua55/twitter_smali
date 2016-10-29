package com.twitter.media.service.tasks;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import bbn;
import com.twitter.media.MediaUtils;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.model.VideoFile;
import com.twitter.media.service.core.MediaServiceTask;
import com.twitter.media.util.d;
import cvi;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class VideoStitchTask extends MediaServiceTask {
    public static final Creator<VideoStitchTask> CREATOR;
    private List<VideoFile> a;
    private VideoFile b;
    private File c;

    static {
        CREATOR = new d();
    }

    private VideoStitchTask(Parcel parcel) {
        a(parcel);
    }

    public VideoStitchTask(List<VideoFile> list, File file) {
        this.a = list;
        this.c = file;
    }

    public void a(Parcel parcel) {
        super.a(parcel);
        ClassLoader classLoader = VideoFile.class.getClassLoader();
        this.a = parcel.readArrayList(classLoader);
        this.b = (VideoFile) parcel.readParcelable(classLoader);
        this.c = new File(parcel.readString());
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeList(this.a);
        parcel.writeParcelable(this.b, i);
        parcel.writeString(this.c.getAbsolutePath());
    }

    protected boolean b(Context context) {
        if (this.c.exists()) {
            this.c.delete();
        }
        try {
            int b = d.b();
            VideoFile videoFile;
            if (this.a.size() == 1) {
                videoFile = (VideoFile) this.a.get(0);
                if (videoFile.g <= b) {
                    return cvi.b(((VideoFile) this.a.get(0)).d, this.c);
                }
                MediaUtils.a(videoFile.d, this.c, 0, (long) b);
                return true;
            }
            ArrayList arrayList = new ArrayList(this.a.size());
            for (VideoFile videoFile2 : this.a) {
                arrayList.add(videoFile2.d);
            }
            if (MediaUtils.a(arrayList, this.c, 0, (long) b) == 0) {
                videoFile = (VideoFile) MediaFile.a(this.c, MediaType.d);
                if (videoFile != null) {
                    this.b = videoFile;
                    return true;
                }
            }
            this.c.delete();
            return false;
        } catch (Throwable th) {
            bbn.a(th);
        }
    }
}
