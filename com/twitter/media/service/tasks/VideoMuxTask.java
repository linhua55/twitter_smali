package com.twitter.media.service.tasks;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.media.MediaUtils;
import com.twitter.media.service.core.MediaServiceTask;
import com.twitter.util.math.Size;
import java.io.File;

/* compiled from: Twttr */
public class VideoMuxTask extends MediaServiceTask {
    public static final Creator<VideoMuxTask> CREATOR;
    private File a;
    private File b;
    private File c;
    private int d;
    private Size e;
    private Exception f;

    static {
        CREATOR = new c();
    }

    private VideoMuxTask(Parcel parcel) {
        a(parcel);
    }

    public void a(Parcel parcel) {
        super.a(parcel);
        this.a = new File(parcel.readString());
        this.b = new File(parcel.readString());
        this.c = new File(parcel.readString());
        this.d = parcel.readInt();
        this.e = (Size) parcel.readParcelable(Size.class.getClassLoader());
        this.f = (Exception) parcel.readSerializable();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.a.getAbsolutePath());
        parcel.writeString(this.b.getAbsolutePath());
        parcel.writeString(this.c.toString());
        parcel.writeInt(this.d);
        parcel.writeParcelable(this.e, i);
        parcel.writeSerializable(this.f);
    }

    protected boolean b(Context context) {
        try {
            MediaUtils.a(this.a, this.b, this.c, this.d, this.e.a(), this.e.b());
            return true;
        } catch (Exception e) {
            this.f = e;
            return false;
        }
    }
}
