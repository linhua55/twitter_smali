package defpackage;

import android.content.Context;
import asy;
import asz;
import com.twitter.library.client.Session;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.x;
import java.io.Closeable;
import java.io.IOException;
import java.util.Map;
import rx.o;

/* compiled from: Twttr */
/* renamed from: ade */
public class ade implements Closeable {
    private final atf<Long, x<Tweet>> a;
    private final atf<Long, x<Tweet>> b;
    private final atf<Iterable<Long>, Map<Long, Tweet>> c;
    private final atf<Iterable<Long>, Map<Long, Tweet>> d;

    public ade(atf<Long, x<Tweet>> atf_java_lang_Long__com_twitter_util_collection_x_com_twitter_model_core_Tweet, atf<Long, x<Tweet>> atf_java_lang_Long__com_twitter_util_collection_x_com_twitter_model_core_Tweet2, atf<Iterable<Long>, Map<Long, Tweet>> atf_java_lang_Iterable_java_lang_Long__java_util_Map_java_lang_Long__com_twitter_model_core_Tweet, atf<Iterable<Long>, Map<Long, Tweet>> atf_java_lang_Iterable_java_lang_Long__java_util_Map_java_lang_Long__com_twitter_model_core_Tweet2) {
        this.a = atf_java_lang_Long__com_twitter_util_collection_x_com_twitter_model_core_Tweet;
        this.b = atf_java_lang_Long__com_twitter_util_collection_x_com_twitter_model_core_Tweet2;
        this.c = atf_java_lang_Iterable_java_lang_Long__java_util_Map_java_lang_Long__com_twitter_model_core_Tweet;
        this.d = atf_java_lang_Iterable_java_lang_Long__java_util_Map_java_lang_Long__com_twitter_model_core_Tweet2;
    }

    public static ade a(Context context, Session session) {
        atf akv = new akv(new asz(context.getContentResolver()), session);
        atf acp = new acp(new acr(context, session), akv);
        return new ade(new asy(new acn(acp)), new asy(new acn(akv)), acp, akv);
    }

    public o<x<Tweet>> a(long j) {
        return this.b.a_(Long.valueOf(j)).h().d(this.a.a_(Long.valueOf(j))).k(new adf(this));
    }

    public void close() throws IOException {
        this.a.close();
        this.b.close();
    }
}
