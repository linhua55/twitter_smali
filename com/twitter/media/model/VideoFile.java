package com.twitter.media.model;

import android.media.MediaMetadataRetriever;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import bbn;
import com.twitter.util.h;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.n;
import cvi;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* compiled from: Twttr */
public class VideoFile extends MediaFile {
    public static final Creator<VideoFile> CREATOR;
    public static final n<VideoFile> a;
    public final int g;

    static {
        a = new u();
        CREATOR = new t();
    }

    public static VideoFile a(File file) {
        Closeable fileInputStream;
        Throwable e;
        h.c();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            fileInputStream = new FileInputStream(file);
            try {
                mediaMetadataRetriever.setDataSource(fileInputStream.getFD());
                int a = a(mediaMetadataRetriever, 9);
                if (a == 0) {
                    mediaMetadataRetriever.release();
                    cvi.a(fileInputStream);
                    return null;
                }
                Size a2;
                int a3 = a(mediaMetadataRetriever, 18);
                int a4 = a(mediaMetadataRetriever, 19);
                if (VERSION.SDK_INT >= 17) {
                    a2 = a(mediaMetadataRetriever, 24) % 180 == 0 ? Size.a(a3, a4) : Size.a(a4, a3);
                } else {
                    a2 = Size.a(a3, a4);
                }
                VideoFile videoFile = new VideoFile(file, a, a2);
                mediaMetadataRetriever.release();
                cvi.a(fileInputStream);
                return videoFile;
            } catch (IOException e2) {
                e = e2;
                try {
                    bbn.a(e);
                    mediaMetadataRetriever.release();
                    cvi.a(fileInputStream);
                    return null;
                } catch (Throwable th) {
                    e = th;
                    mediaMetadataRetriever.release();
                    cvi.a(fileInputStream);
                    throw e;
                }
            }
        } catch (IOException e3) {
            e = e3;
            fileInputStream = null;
            bbn.a(e);
            mediaMetadataRetriever.release();
            cvi.a(fileInputStream);
            return null;
        } catch (Throwable th2) {
            e = th2;
            fileInputStream = null;
            mediaMetadataRetriever.release();
            cvi.a(fileInputStream);
            throw e;
        }
    }

    VideoFile(File file, int i, Size size) {
        super(file, size, MediaType.d);
        this.g = i;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof VideoFile) && a((VideoFile) obj));
    }

    public boolean a(VideoFile videoFile) {
        return this == videoFile || (videoFile != null && a(videoFile) && videoFile.g == this.g);
    }

    public int hashCode() {
        return (super.hashCode() * 31) + this.g;
    }

    private static int a(MediaMetadataRetriever mediaMetadataRetriever, int i) {
        String extractMetadata = mediaMetadataRetriever.extractMetadata(i);
        return extractMetadata == null ? 0 : Integer.parseInt(extractMetadata);
    }

    VideoFile(Parcel parcel) {
        super(parcel);
        this.g = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.g);
    }
}
