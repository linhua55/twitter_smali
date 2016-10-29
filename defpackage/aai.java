package defpackage;

import com.twitter.library.av.ad;
import com.twitter.media.request.b;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: aai */
public abstract class aai implements ad {
    public final Tweet a;
    public final MediaEntity b;
    public final b c;
    public final String d;
    public boolean e;

    public abstract int b();

    public abstract boolean c();

    public abstract boolean d();

    public abstract boolean e();

    public aai(Tweet tweet, MediaEntity mediaEntity, b bVar, String str) {
        this.a = tweet;
        this.b = mediaEntity;
        this.c = bVar;
        this.e = true;
        this.d = str;
    }

    public Tweet a() {
        return this.a;
    }
}
