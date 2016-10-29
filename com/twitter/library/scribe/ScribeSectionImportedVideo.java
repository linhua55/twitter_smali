package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class ScribeSectionImportedVideo extends ScribeSection {
    public static final Creator<ScribeSectionImportedVideo> CREATOR;
    private static final String[] a;

    static {
        CREATOR = new af();
        a = new String[]{"event_namespace", "width", "height", "orientation", "frames_per_second", "duration_ms", "original_duration_ms", "source", "trim_start_ms", "video_mime", "audio_mime"};
    }

    public ScribeSectionImportedVideo() {
        super(null, a.length);
    }

    public ScribeSectionImportedVideo(Parcel parcel) {
        super(parcel);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public ScribeSectionImportedVideo(com.twitter.model.media.EditableVideo r5) {
        /*
        r4 = this;
        r4.<init>();
        com.twitter.util.j.c();
        r0 = r5.k;
        r0 = (com.twitter.media.model.VideoFile) r0;
        r0 = r0.e;
        r1 = 1;
        r2 = r0.a();
        r2 = java.lang.Integer.valueOf(r2);
        r4.a(r1, r2);
        r1 = 2;
        r0 = r0.b();
        r0 = java.lang.Integer.valueOf(r0);
        r4.a(r1, r0);
        r0 = 5;
        r1 = r5.c;
        r2 = r5.b;
        r1 = r1 - r2;
        r1 = java.lang.Integer.valueOf(r1);
        r4.a(r0, r1);
        r1 = 6;
        r0 = r5.k;
        r0 = (com.twitter.media.model.VideoFile) r0;
        r0 = r0.g;
        r0 = java.lang.Integer.valueOf(r0);
        r4.a(r1, r0);
        r0 = 7;
        r1 = r5.h();
        r1 = r1.a();
        r4.a(r0, r1);
        r0 = 8;
        r1 = r5.b;
        r1 = java.lang.Integer.valueOf(r1);
        r4.a(r0, r1);
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 17;
        if (r0 < r1) goto L_0x0081;
    L_0x005c:
        r1 = new android.media.MediaMetadataRetriever;
        r1.<init>();
        r0 = r5.k;	 Catch:{ Throwable -> 0x00e1 }
        r0 = (com.twitter.media.model.VideoFile) r0;	 Catch:{ Throwable -> 0x00e1 }
        r0 = r0.d;	 Catch:{ Throwable -> 0x00e1 }
        r0 = r0.getAbsolutePath();	 Catch:{ Throwable -> 0x00e1 }
        r1.setDataSource(r0);	 Catch:{ Throwable -> 0x00e1 }
        r0 = 24;
        r0 = r1.extractMetadata(r0);	 Catch:{ Throwable -> 0x00e1 }
        if (r0 == 0) goto L_0x007e;
    L_0x0076:
        r2 = 3;
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ Throwable -> 0x00e1 }
        r4.a(r2, r0);	 Catch:{ Throwable -> 0x00e1 }
    L_0x007e:
        r1.release();
    L_0x0081:
        r1 = new android.media.MediaExtractor;
        r1.<init>();
        r0 = r5.k;	 Catch:{ Throwable -> 0x00ff }
        r0 = (com.twitter.media.model.VideoFile) r0;	 Catch:{ Throwable -> 0x00ff }
        r0 = r0.d;	 Catch:{ Throwable -> 0x00ff }
        r0 = r0.getAbsolutePath();	 Catch:{ Throwable -> 0x00ff }
        r1.setDataSource(r0);	 Catch:{ Throwable -> 0x00ff }
        r0 = "video/";
        r0 = com.twitter.media.util.r.a(r1, r0);	 Catch:{ Throwable -> 0x00ff }
        if (r0 < 0) goto L_0x00c4;
    L_0x009c:
        r0 = r1.getTrackFormat(r0);	 Catch:{ Throwable -> 0x00ff }
        r2 = 9;
        r3 = "mime";
        r3 = r0.getString(r3);	 Catch:{ Throwable -> 0x00ff }
        r4.a(r2, r3);	 Catch:{ Throwable -> 0x00ff }
        r2 = "frame-rate";
        r2 = r0.containsKey(r2);	 Catch:{ Throwable -> 0x00ff }
        if (r2 == 0) goto L_0x00c4;
    L_0x00b5:
        r2 = 4;
        r3 = "frame-rate";
        r3 = r0.getFloat(r3);	 Catch:{ ClassCastException -> 0x00ee }
        r3 = java.lang.Float.valueOf(r3);	 Catch:{ ClassCastException -> 0x00ee }
        r4.a(r2, r3);	 Catch:{ ClassCastException -> 0x00ee }
    L_0x00c4:
        r0 = "audio/";
        r0 = com.twitter.media.util.r.a(r1, r0);	 Catch:{ Throwable -> 0x00ff }
        if (r0 < 0) goto L_0x00dd;
    L_0x00cd:
        r0 = r1.getTrackFormat(r0);	 Catch:{ Throwable -> 0x00ff }
        r2 = 10;
        r3 = "mime";
        r0 = r0.getString(r3);	 Catch:{ Throwable -> 0x00ff }
        r4.a(r2, r0);	 Catch:{ Throwable -> 0x00ff }
    L_0x00dd:
        r1.release();
    L_0x00e0:
        return;
    L_0x00e1:
        r0 = move-exception;
        defpackage.bbn.a(r0);	 Catch:{ all -> 0x00e9 }
        r1.release();
        goto L_0x0081;
    L_0x00e9:
        r0 = move-exception;
        r1.release();
        throw r0;
    L_0x00ee:
        r2 = move-exception;
        r2 = 4;
        r3 = "frame-rate";
        r0 = r0.getInteger(r3);	 Catch:{ Throwable -> 0x00ff }
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ Throwable -> 0x00ff }
        r4.a(r2, r0);	 Catch:{ Throwable -> 0x00ff }
        goto L_0x00c4;
    L_0x00ff:
        r0 = move-exception;
        defpackage.bbn.a(r0);	 Catch:{ all -> 0x0107 }
        r1.release();
        goto L_0x00e0;
    L_0x0107:
        r0 = move-exception;
        r1.release();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.scribe.ScribeSectionImportedVideo.<init>(com.twitter.model.media.EditableVideo):void");
    }

    protected String a(int i) {
        return a[i];
    }

    public ScribeSectionImportedVideo a(String str) {
        a(0, (Object) new ScribeSectionNamespace(str));
        return this;
    }
}
