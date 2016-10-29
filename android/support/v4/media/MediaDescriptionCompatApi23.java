package android.support.v4.media;

import android.media.MediaDescription;
import android.net.Uri;

/* compiled from: Twttr */
class MediaDescriptionCompatApi23 extends MediaDescriptionCompatApi21 {

    /* compiled from: Twttr */
    class Builder extends Builder {
        Builder() {
        }

        public static void setMediaUri(Object obj, Uri uri) {
            ((android.media.MediaDescription.Builder) obj).setMediaUri(uri);
        }
    }

    MediaDescriptionCompatApi23() {
    }

    public static Uri getMediaUri(Object obj) {
        return ((MediaDescription) obj).getMediaUri();
    }
}