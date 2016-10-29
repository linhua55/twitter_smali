package com.twitter.media.model;

import android.os.AsyncTask;
import com.twitter.platform.PlatformContext;
import com.twitter.util.al;
import com.twitter.util.c;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class n {
    private final File a;
    private final File b;
    private final p c;

    public static n a(File file) {
        return new n(file, null);
    }

    public static n a(SegmentedVideoFile segmentedVideoFile) {
        File file = segmentedVideoFile.d;
        return new n(file.getParentFile(), file);
    }

    private n(File file, File file2) {
        this.c = new p();
        this.a = file;
        this.b = file2;
    }

    public n a(VideoFile videoFile) {
        if (videoFile.d.getParent().equals(this.a.getAbsolutePath())) {
            this.c.b.add(videoFile);
            return this;
        }
        throw new IllegalArgumentException();
    }

    public n a(int i) {
        this.c.d = i;
        return this;
    }

    public SegmentedVideoFile a() {
        File file;
        int size = this.c.b.size();
        List arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(Integer.valueOf(i));
        }
        this.c.c = arrayList;
        if (this.b != null) {
            file = this.b;
        } else {
            file = new File(this.a, "pic-" + al.b() + '.' + "segv");
        }
        SegmentedVideoFile segmentedVideoFile = new SegmentedVideoFile(file, this.c);
        if (c.a()) {
            AsyncTask.execute(new o(this, segmentedVideoFile));
        } else {
            segmentedVideoFile.e();
        }
        return segmentedVideoFile;
    }

    public File b() {
        return this.a;
    }

    public File c() {
        return new File(this.a, "pic-" + al.b() + '.' + MediaType.d.extension);
    }

    public void d() {
        this.c.b.clear();
        for (File b : this.a.listFiles()) {
            PlatformContext.f().e().b(b);
        }
        this.a.delete();
    }

    public n b(int i) {
        this.c.a = i;
        return this;
    }
}
