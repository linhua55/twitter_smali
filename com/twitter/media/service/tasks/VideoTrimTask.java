package com.twitter.media.service.tasks;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.media.MediaUtils;
import com.twitter.media.service.core.MediaServiceTask;
import java.io.File;

/* compiled from: Twttr */
public class VideoTrimTask extends MediaServiceTask {
    public static final Creator<VideoTrimTask> CREATOR;
    private Uri a;
    private File b;
    private long c;
    private long d;
    private int e;
    private int f;
    private Exception g;

    static {
        CREATOR = new e();
    }

    private VideoTrimTask(Parcel parcel) {
        a(parcel);
    }

    public void a(Parcel parcel) {
        super.a(parcel);
        this.a = Uri.parse(parcel.readString());
        this.b = new File(parcel.readString());
        this.c = parcel.readLong();
        this.d = parcel.readLong();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = (Exception) parcel.readSerializable();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.a.toString());
        parcel.writeString(this.b.getAbsolutePath());
        parcel.writeLong(this.c);
        parcel.writeLong(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeSerializable(this.g);
    }

    protected boolean b(Context context) {
        try {
            int[] a = MediaUtils.a(context, this.a, this.b, this.c, this.d);
            this.e = a[0];
            this.f = a[1];
            return true;
        } catch (Exception e) {
            this.g = e;
            return false;
        }
    }
}
