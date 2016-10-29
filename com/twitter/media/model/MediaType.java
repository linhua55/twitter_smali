package com.twitter.media.model;

import com.twitter.util.collection.k;
import java.util.EnumSet;

/* compiled from: Twttr */
public enum MediaType {
    UNKNOWN(0, null, null),
    IMAGE(1, "image/jpeg", "jpg"),
    ANIMATED_GIF(2, "image/gif", "gif"),
    VIDEO(3, "video/mp4", "mp4"),
    SVG(4, "image/svg", "svg"),
    SEGMENTED_VIDEO(1000, "directory/segments", "segments");
    
    public static final EnumSet<MediaType> g;
    public static final EnumSet<MediaType> h;
    private static final k<MediaType> i;
    public final String extension;
    public final String mimeType;
    public final int typeId;

    static {
        g = EnumSet.of(IMAGE);
        h = EnumSet.allOf(MediaType.class);
        MediaType[] values = values();
        k kVar = new k(values.length);
        int length = values.length;
        int i;
        while (i < length) {
            MediaType mediaType = values[i];
            kVar.a(mediaType.typeId, mediaType);
            i++;
        }
        i = kVar;
    }

    private MediaType(int i, String str, String str2) {
        this.typeId = i;
        this.mimeType = str;
        this.extension = str2;
    }

    public static MediaType a(int i) {
        MediaType mediaType = (MediaType) i.a(i);
        return mediaType != null ? mediaType : UNKNOWN;
    }

    public static MediaType a(String str) {
        if (str.startsWith("image/")) {
            if (str.equals("image/gif")) {
                return ANIMATED_GIF;
            }
            if (str.equals("image/svg") || str.equals("image/svg+xml")) {
                return SVG;
            }
            return IMAGE;
        } else if (str.startsWith("video/")) {
            return VIDEO;
        } else {
            if (str.startsWith("directory/")) {
                return SEGMENTED_VIDEO;
            }
            return UNKNOWN;
        }
    }
}
