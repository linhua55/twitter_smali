package defpackage;

import com.twitter.media.model.MediaType;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.am;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import cpc;
import cpd;
import cpe;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cpb */
public class cpb {
    public static final List<String> a;
    public static final List<Type> b;
    public static final List<Type> c;
    public static final List<Type> d;
    private static final cuj<MediaEntity> e;
    private static final cuj<MediaEntity> f;
    private static final cuj<MediaEntity> g;

    static {
        a = n.a((Object) "application/dash+xml", "application/x-mpegURL", "video/mp4", "video/webm");
        b = n.a(Type.VIDEO, Type.ANIMATED_GIF);
        c = n.b(Type.VIDEO);
        d = n.b(Type.ANIMATED_GIF);
        e = new cpc();
        f = new cpd();
        g = new cpe();
    }

    public static List<MediaEntity> a(Tweet tweet, Size size) {
        return cpb.d(tweet.w.d, size);
    }

    public static List<MediaEntity> a(Tweet tweet, long j, Size size) {
        return cpb.d(tweet.b(j), size);
    }

    public static List<MediaEntity> b(Tweet tweet, Size size) {
        return cpb.e(tweet.w.d, size);
    }

    public static List<MediaEntity> a(Iterable<MediaEntity> iterable, Size size) {
        Object b = cpb.b((Iterable) iterable);
        if (b == null || !cpb.c((MediaEntity) b)) {
            return cpb.d(iterable, size);
        }
        return n.b(b);
    }

    public static MediaEntity a(Iterable<MediaEntity> iterable) {
        MediaEntity b = cpb.b((Iterable) iterable);
        return (b == null || !cpb.c(b)) ? cpb.b((Iterable) iterable, Size.b) : b;
    }

    public static MediaEntity b(Iterable<MediaEntity> iterable) {
        MediaEntity mediaEntity = null;
        for (MediaEntity mediaEntity2 : iterable) {
            MediaEntity mediaEntity22;
            if (mediaEntity22.i == 0) {
                return mediaEntity22;
            }
            if (mediaEntity != null) {
                mediaEntity22 = mediaEntity;
            }
            mediaEntity = mediaEntity22;
        }
        return mediaEntity;
    }

    public static boolean a(MediaEntity mediaEntity, Size size) {
        return mediaEntity.n.b(size);
    }

    public static MediaEntity b(Iterable<MediaEntity> iterable, Size size) {
        MediaEntity mediaEntity = null;
        for (MediaEntity mediaEntity2 : iterable) {
            MediaEntity mediaEntity22;
            if (cpb.b(mediaEntity22) || !cpb.a(mediaEntity22, size)) {
                if (mediaEntity22.i == 0) {
                    return mediaEntity22;
                }
                if (mediaEntity != null) {
                    mediaEntity22 = mediaEntity;
                }
                mediaEntity = mediaEntity22;
            }
        }
        return mediaEntity;
    }

    public static MediaEntity c(Iterable<MediaEntity> iterable) {
        return cpb.a((Iterable) iterable, b);
    }

    public static MediaEntity d(Iterable<MediaEntity> iterable) {
        return cpb.a((Iterable) iterable, c);
    }

    public static MediaEntity e(Iterable<MediaEntity> iterable) {
        return cpb.a((Iterable) iterable, d);
    }

    private static MediaEntity a(Iterable<MediaEntity> iterable, List<Type> list) {
        MediaEntity mediaEntity = null;
        for (MediaEntity mediaEntity2 : iterable) {
            if (cpb.c(mediaEntity2) && list.contains(mediaEntity2.m)) {
                if (mediaEntity2.i == 0) {
                    return mediaEntity2;
                }
                if (mediaEntity == null) {
                    mediaEntity = mediaEntity2;
                }
            }
            MediaEntity mediaEntity22 = mediaEntity;
            mediaEntity = mediaEntity22;
        }
        return mediaEntity;
    }

    public static boolean c(Iterable<MediaEntity> iterable, Size size) {
        for (MediaEntity mediaEntity : iterable) {
            if (cpb.b(mediaEntity) && cpb.a(mediaEntity, size)) {
                return true;
            }
        }
        return false;
    }

    public static boolean c(Tweet tweet, Size size) {
        return cpb.c(tweet.w.d, size);
    }

    public static boolean f(Iterable<MediaEntity> iterable) {
        for (MediaEntity c : iterable) {
            if (cpb.c(c)) {
                return true;
            }
        }
        return false;
    }

    public static boolean g(Iterable<MediaEntity> iterable) {
        for (MediaEntity mediaEntity : iterable) {
            if (cpb.c(mediaEntity) && mediaEntity.m == Type.VIDEO) {
                return true;
            }
        }
        return false;
    }

    public static boolean h(Iterable<MediaEntity> iterable) {
        for (MediaEntity a : iterable) {
            if (cpb.a(a)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(MediaEntity mediaEntity) {
        return cpb.c(mediaEntity) && mediaEntity.m == Type.ANIMATED_GIF;
    }

    public static boolean a(Tweet tweet) {
        return cpb.c(tweet, Size.b) || tweet.M();
    }

    public static List<MediaEntity> d(Iterable<MediaEntity> iterable, Size size) {
        return cpb.a((Iterable) iterable, size, e);
    }

    public static List<MediaEntity> e(Iterable<MediaEntity> iterable, Size size) {
        return cpb.a((Iterable) iterable, size, f);
    }

    public static List<MediaEntity> f(Iterable<MediaEntity> iterable, Size size) {
        return cpb.a((Iterable) iterable, size, g);
    }

    private static List<MediaEntity> a(Iterable<MediaEntity> iterable, Size size, cuj<MediaEntity> cuj_com_twitter_model_core_MediaEntity) {
        n d = n.d();
        long j = 0;
        for (Object obj : iterable) {
            long j2;
            if (cuj_com_twitter_model_core_MediaEntity.a(obj) && cpb.a((MediaEntity) obj, size)) {
                if (obj.i == 0) {
                    d.c(obj);
                    j2 = j;
                } else if (j == 0) {
                    j2 = obj.i;
                }
                j = j2;
            }
            j2 = j;
            j = j2;
        }
        if (d.h() && j != 0) {
            for (Object obj2 : iterable) {
                if (cuj_com_twitter_model_core_MediaEntity.a(obj2) && cpb.a((MediaEntity) obj2, size) && obj2.i == j) {
                    d.c(obj2);
                }
            }
        }
        return (List) d.q();
    }

    public static List<MediaEntity> i(Iterable<MediaEntity> iterable) {
        n d = n.d();
        for (Object obj : iterable) {
            if (obj.m == Type.IMAGE) {
                d.c(obj);
            }
        }
        return (List) d.q();
    }

    public static boolean b(MediaEntity mediaEntity) {
        return mediaEntity.m == Type.IMAGE && aj.b(mediaEntity.l);
    }

    public static boolean c(MediaEntity mediaEntity) {
        if (mediaEntity.o != null && cpb.a(mediaEntity.m)) {
            for (am amVar : mediaEntity.o.d) {
                if (a.contains(amVar.d)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean a(Type type) {
        return type == Type.VIDEO || type == Type.ANIMATED_GIF;
    }

    public static List<Long> j(Iterable<MediaEntity> iterable) {
        List<MediaEntity> i = cpb.i(iterable);
        n a = n.a(i.size());
        for (MediaEntity mediaEntity : i) {
            a.c(Long.valueOf(mediaEntity.c));
        }
        return (List) a.q();
    }

    public static EditableMedia k(Iterable<EditableMedia> iterable) {
        return cpb.a((Iterable) iterable, MediaType.VIDEO, MediaType.SEGMENTED_VIDEO, MediaType.ANIMATED_GIF);
    }

    public static EditableMedia a(Iterable<EditableMedia> iterable, MediaType... mediaTypeArr) {
        for (EditableMedia editableMedia : iterable) {
            MediaType g = editableMedia.g();
            for (MediaType mediaType : mediaTypeArr) {
                if (g == mediaType) {
                    return editableMedia;
                }
            }
        }
        return null;
    }

    public static boolean d(MediaEntity mediaEntity) {
        return (mediaEntity == null || mediaEntity.y == null || !mediaEntity.y.b) ? false : true;
    }
}
