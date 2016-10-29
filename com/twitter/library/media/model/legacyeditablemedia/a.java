package com.twitter.library.media.model.legacyeditablemedia;

import com.twitter.library.media.model.legacyeditablemedia.Size.SerializationProxy;
import com.twitter.util.collection.r;
import com.twitter.util.q;
import defpackage.bbn;
import java.util.Map;

@Deprecated
/* compiled from: Twttr */
public class a {
    private static final Map<Long, Class<?>> a;

    static {
        a = (Map) r.d().b(Long.valueOf(2344626313801010644L), SerializationProxy.class).b(Long.valueOf(4089193719315335105L), MediaTag.SerializationProxy.class).b(Long.valueOf(ModelSerializationProxy.serialVersionUID), ModelSerializationProxy.class).b(Long.valueOf(6446199009249531834L), AnimatedGifFile.SerializationProxy.class).b(Long.valueOf(-438662659801197828L), EditableAnimatedGif.SerializationProxy.class).b(Long.valueOf(233136753015761794L), EditableImage.SerializationProxy.class).b(Long.valueOf(-8316430463197754811L), EditableSegmentedVideo.SerializationProxy.class).b(Long.valueOf(3496858402433330067L), EditableVideo.SerializationProxy.class).b(Long.valueOf(-43936705225171357L), ImageFile.SerializationProxy.class).b(Long.valueOf(-5751292908243493952L), SegmentedVideoFile.SerializationProxy.class).b(Long.valueOf(6069472170219726439L), VideoFile.SerializationProxy.class).q();
    }

    public static <T> T a(byte[] bArr) {
        try {
            return q.a(bArr, a);
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }
}
