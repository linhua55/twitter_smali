package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.x;
import java.io.Closeable;
import java.io.IOException;
import rx.o;

/* compiled from: Twttr */
/* renamed from: adg */
public class adg implements Closeable {
    private final atf<Long, x<TwitterUser>> a;
    private final atf<Long, x<TwitterUser>> b;

    public adg(atf<Long, x<TwitterUser>> atf_java_lang_Long__com_twitter_util_collection_x_com_twitter_model_core_TwitterUser, atf<Long, x<TwitterUser>> atf_java_lang_Long__com_twitter_util_collection_x_com_twitter_model_core_TwitterUser2) {
        this.a = atf_java_lang_Long__com_twitter_util_collection_x_com_twitter_model_core_TwitterUser;
        this.b = atf_java_lang_Long__com_twitter_util_collection_x_com_twitter_model_core_TwitterUser2;
    }

    public o<x<TwitterUser>> a(long j) {
        return this.b.a_(Long.valueOf(j)).d(this.a.a_(Long.valueOf(j))).k(new adh(this));
    }

    public void close() throws IOException {
        this.a.close();
        this.b.close();
    }
}
