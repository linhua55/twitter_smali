package com.twitter.library.media.model.legacyentities;

import android.net.Uri;
import com.twitter.media.model.AnimatedGifFile;
import com.twitter.media.model.ImageFile;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.SegmentedVideoFile;
import com.twitter.media.model.VideoFile;
import com.twitter.model.core.ag;
import com.twitter.model.media.EditableAnimatedGif;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.EditableSegmentedVideo;
import com.twitter.model.media.EditableVideo;
import com.twitter.model.media.MediaSource;
import com.twitter.util.collection.r;
import com.twitter.util.j;
import com.twitter.util.math.c;
import com.twitter.util.q;
import defpackage.bbn;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

@Deprecated
/* compiled from: Twttr */
public class a {
    private static final Map<Long, Class<?>> a;

    static {
        a = (Map) r.d().b(Long.valueOf(3820360449367569386L), MediaEntity.class).b(Long.valueOf(5429693440322044067L), MediaTag.class).b(Long.valueOf(3295350313851190225L), MediaVideoInfo.class).b(Long.valueOf(-1124359188841849336L), MediaVideoVariant.class).b(Long.valueOf(6441783362961660943L), TweetMediaFeature.class).q();
    }

    public static <T> T a(byte[] bArr) {
        return q.a(bArr, a);
    }

    public static List<EditableMedia> a(List<MediaEntity> list, MediaSource mediaSource) {
        j.c();
        List<EditableMedia> arrayList = new ArrayList(list.size());
        for (MediaEntity a : list) {
            EditableMedia a2 = a(a, mediaSource);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return arrayList;
    }

    public static EditableMedia a(MediaEntity mediaEntity, MediaSource mediaSource) {
        j.c();
        String str = mediaEntity.composerSourceUrl != null ? mediaEntity.composerSourceUrl : mediaEntity.mediaUrl != null ? mediaEntity.mediaUrl : mediaEntity.url;
        if (str == null) {
            return null;
        }
        Uri parse = Uri.parse(str);
        if ("file".equals(parse.getScheme())) {
            MediaFile a = MediaFile.a(new File(parse.getPath()), mediaEntity.type);
            if (a == null) {
                return null;
            }
            switch (b.a[a.f.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    c a2;
                    EditableMedia editableImage = new EditableImage((ImageFile) a, mediaSource);
                    editableImage.b = mediaEntity.enhanced;
                    editableImage.c = mediaEntity.effect;
                    editableImage.d = mediaEntity.intensity;
                    if (mediaEntity.cropRect != null) {
                        a2 = c.a(mediaEntity.cropRect);
                    } else {
                        a2 = null;
                    }
                    editableImage.f = a2;
                    editableImage.e = mediaEntity.rotation;
                    editableImage.g = a(mediaEntity.tags);
                    return editableImage;
                case WireMessage.WIRE_CONTROL /*2*/:
                    return new EditableAnimatedGif((AnimatedGifFile) a, mediaSource);
                case WireMessage.WIRE_AUTH /*3*/:
                    EditableMedia editableVideo = new EditableVideo((VideoFile) a, mediaSource);
                    editableVideo.b = mediaEntity.clipStart;
                    editableVideo.c = mediaEntity.clipEnd;
                    return editableVideo;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    return new EditableSegmentedVideo((SegmentedVideoFile) a, mediaSource);
                default:
                    return null;
            }
        }
        bbn.a(new IllegalStateException("MediaEntity has an non-file media uri=" + parse));
        return null;
    }

    @Deprecated
    private static List<ag> a(Collection<MediaTag> collection) {
        List<ag> arrayList = new ArrayList(collection.size());
        for (MediaTag mediaTag : collection) {
            arrayList.add(new ag(mediaTag.userId, mediaTag.name, mediaTag.screenName));
        }
        return arrayList;
    }
}
