package com.twitter.media.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import bbn;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.platform.PlatformContext;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.concurrent.j;
import com.twitter.util.h;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.n;
import cvi;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class SegmentedVideoFile extends MediaFile {
    public static final Creator<SegmentedVideoFile> CREATOR;
    public static final n<SegmentedVideoFile> a;
    private static final JsonFactory k;
    public final int g;
    public final List<VideoFile> h;
    public final List<Integer> i;
    public final int j;

    static {
        a = new q();
        CREATOR = new m();
        k = new JsonFactory();
    }

    public static SegmentedVideoFile a(File file) {
        Closeable fileReader;
        Throwable th;
        SegmentedVideoFile segmentedVideoFile = null;
        h.c();
        try {
            fileReader = new FileReader(file);
            try {
                segmentedVideoFile = a(file, (Reader) fileReader);
                cvi.a(fileReader);
            } catch (IOException e) {
                cvi.a(fileReader);
                return segmentedVideoFile;
            } catch (Throwable th2) {
                th = th2;
                cvi.a(fileReader);
                throw th;
            }
        } catch (IOException e2) {
            fileReader = segmentedVideoFile;
            cvi.a(fileReader);
            return segmentedVideoFile;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            fileReader = segmentedVideoFile;
            th = th4;
            cvi.a(fileReader);
            throw th;
        }
        return segmentedVideoFile;
    }

    public static SegmentedVideoFile a(File file, Reader reader) {
        Closeable a;
        Closeable closeable;
        Throwable th;
        try {
            a = k.a(reader);
            try {
                a.a();
                p a2 = a((JsonParser) a);
                SegmentedVideoFile segmentedVideoFile = a2 != null ? new SegmentedVideoFile(file, a2) : null;
                cvi.a(a);
                return segmentedVideoFile;
            } catch (IOException e) {
                closeable = a;
                cvi.a(closeable);
                return null;
            } catch (Throwable th2) {
                th = th2;
                cvi.a(a);
                throw th;
            }
        } catch (IOException e2) {
            closeable = null;
            cvi.a(closeable);
            return null;
        } catch (Throwable th3) {
            th = th3;
            a = null;
            cvi.a(a);
            throw th;
        }
    }

    SegmentedVideoFile(File file, p pVar) {
        super(file, ((VideoFile) pVar.b.get(0)).e, MediaType.f);
        this.g = pVar.a;
        this.h = com.twitter.util.collection.n.a(pVar.b);
        this.i = com.twitter.util.collection.n.a(pVar.c);
        this.j = pVar.d;
    }

    public int d() {
        int i = 0;
        for (Integer intValue : this.i) {
            i = ((VideoFile) this.h.get(intValue.intValue())).g + i;
        }
        return i;
    }

    public j<Boolean> c() {
        List arrayList = new ArrayList(this.h.size() + 2);
        for (VideoFile videoFile : this.h) {
            arrayList.add(videoFile.d);
        }
        arrayList.add(this.d);
        arrayList.add(this.d.getParentFile());
        return PlatformContext.f().e().a(arrayList);
    }

    public boolean b() {
        h.c();
        for (VideoFile videoFile : this.h) {
            videoFile.b();
            videoFile.d.delete();
        }
        return this.d.delete() && this.d.getParentFile().delete();
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof SegmentedVideoFile) && a((SegmentedVideoFile) obj));
    }

    public boolean a(SegmentedVideoFile segmentedVideoFile) {
        return this == segmentedVideoFile || (segmentedVideoFile != null && a(segmentedVideoFile) && segmentedVideoFile.g == this.g && segmentedVideoFile.h.equals(this.h) && segmentedVideoFile.i.equals(this.i));
    }

    public int hashCode() {
        return (((((super.hashCode() * 31) + this.g) * 31) + this.h.hashCode()) * 31) + this.i.hashCode();
    }

    void e() {
        Throwable e;
        h.c();
        Closeable closeable = null;
        Closeable fileWriter;
        try {
            fileWriter = new FileWriter(this.d);
            try {
                a((Writer) fileWriter);
                cvi.a(fileWriter);
            } catch (IOException e2) {
                e = e2;
                try {
                    bbn.a(e);
                    cvi.a(fileWriter);
                } catch (Throwable th) {
                    e = th;
                    closeable = fileWriter;
                    cvi.a(closeable);
                    throw e;
                }
            }
        } catch (IOException e3) {
            e = e3;
            fileWriter = null;
            bbn.a(e);
            cvi.a(fileWriter);
        } catch (Throwable th2) {
            e = th2;
            cvi.a(closeable);
            throw e;
        }
    }

    void a(Writer writer) {
        Closeable closeable = null;
        try {
            closeable = k.a(writer);
            a((JsonGenerator) closeable);
        } catch (Throwable e) {
            bbn.a(e);
        } finally {
            cvi.a(closeable);
        }
    }

    private void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        jsonGenerator.a("camera_id", this.g);
        jsonGenerator.a("orientation", this.j);
        jsonGenerator.a("files");
        jsonGenerator.a();
        for (VideoFile videoFile : this.h) {
            jsonGenerator.c();
            jsonGenerator.a("path", videoFile.d.getAbsolutePath());
            jsonGenerator.a("duration", videoFile.g);
            jsonGenerator.a("width", videoFile.e.a());
            jsonGenerator.a("height", videoFile.e.b());
            jsonGenerator.d();
        }
        jsonGenerator.b();
        jsonGenerator.a("play_list");
        jsonGenerator.a();
        for (Integer intValue : this.i) {
            jsonGenerator.b(intValue.intValue());
        }
        jsonGenerator.b();
        jsonGenerator.d();
    }

    private static p a(JsonParser jsonParser) throws IOException {
        if (jsonParser.d() != JsonToken.b) {
            return null;
        }
        p pVar = new p();
        while (jsonParser.a() == JsonToken.f) {
            jsonParser.a();
            String e = jsonParser.e();
            Object obj = -1;
            switch (e.hashCode()) {
                case -1877754167:
                    if (e.equals("play_list")) {
                        obj = 3;
                        break;
                    }
                    break;
                case -1439500848:
                    if (e.equals("orientation")) {
                        obj = 1;
                        break;
                    }
                    break;
                case -341991307:
                    if (e.equals("camera_id")) {
                        obj = null;
                        break;
                    }
                    break;
                case 97434231:
                    if (e.equals("files")) {
                        obj = 2;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case p.View_android_theme /*0*/:
                    pVar.a = jsonParser.i();
                    break;
                case p.View_android_focusable /*1*/:
                    pVar.d = jsonParser.i();
                    break;
                case p.View_paddingStart /*2*/:
                    a(jsonParser, pVar.b);
                    break;
                case p.View_paddingEnd /*3*/:
                    b(jsonParser, pVar.c);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
        }
        b(jsonParser);
        if (pVar.b.isEmpty() || pVar.c.isEmpty()) {
            return null;
        }
        return pVar;
    }

    private static void a(JsonParser jsonParser, List<VideoFile> list) throws IOException {
        if (jsonParser.d() == JsonToken.d) {
            while (jsonParser.a() == JsonToken.b) {
                File file = null;
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                while (jsonParser.a() == JsonToken.f) {
                    jsonParser.a();
                    String e = jsonParser.e();
                    Object obj = -1;
                    switch (e.hashCode()) {
                        case -1992012396:
                            if (e.equals("duration")) {
                                obj = 1;
                                break;
                            }
                            break;
                        case -1221029593:
                            if (e.equals("height")) {
                                obj = 3;
                                break;
                            }
                            break;
                        case 3433509:
                            if (e.equals("path")) {
                                obj = null;
                                break;
                            }
                            break;
                        case 113126854:
                            if (e.equals("width")) {
                                obj = 2;
                                break;
                            }
                            break;
                    }
                    switch (obj) {
                        case p.View_android_theme /*0*/:
                            file = new File(jsonParser.s());
                            break;
                        case p.View_android_focusable /*1*/:
                            i = jsonParser.o();
                            break;
                        case p.View_paddingStart /*2*/:
                            i3 = jsonParser.i();
                            break;
                        case p.View_paddingEnd /*3*/:
                            i2 = jsonParser.i();
                            break;
                        default:
                            jsonParser.c();
                            break;
                    }
                }
                b(jsonParser);
                if (file != null && i > 0) {
                    list.add(new VideoFile(file, i, Size.a(i3, i2)));
                }
            }
            c(jsonParser);
        }
    }

    private static void b(JsonParser jsonParser, List<Integer> list) throws IOException {
        if (jsonParser.d() == JsonToken.d) {
            while (jsonParser.a() == JsonToken.i) {
                list.add(Integer.valueOf(jsonParser.i()));
            }
            c(jsonParser);
        }
    }

    SegmentedVideoFile(Parcel parcel) {
        super(parcel);
        this.g = parcel.readInt();
        this.h = ImmutableList.a(parcel.readArrayList(VideoFile.class.getClassLoader()));
        this.i = ImmutableList.a(parcel.readArrayList(null));
        this.j = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.g);
        parcel.writeList(this.h);
        parcel.writeList(this.i);
        parcel.writeInt(this.j);
    }

    private static void b(JsonParser jsonParser) {
        if (h.e() && jsonParser.d() != JsonToken.c) {
            throw new RuntimeException();
        }
    }

    private static void c(JsonParser jsonParser) {
        if (h.e() && jsonParser.d() != JsonToken.e) {
            throw new RuntimeException();
        }
    }
}
