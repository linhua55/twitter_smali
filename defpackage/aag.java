package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.Tweet;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: aag */
public abstract class aag {
    public final int a;
    public final ViewGroup b;
    public final aao c;
    public final TwitterScribeAssociation d;
    protected final Context e;
    protected aai f;
    protected final List<MediaImageView> g;

    protected abstract ViewGroup a(LayoutInflater layoutInflater, Context context, ViewGroup viewGroup);

    public abstract void a(aai aai, cqp cqp, aad aad);

    public abstract void a(boolean z);

    public abstract void c();

    public abstract void d();

    aag(Context context, ViewGroup viewGroup, int i, aao aao, TwitterScribeAssociation twitterScribeAssociation, List<MediaImageView> list) {
        this(context, viewGroup, i, aao, twitterScribeAssociation, list, LayoutInflater.from(context));
    }

    aag(Context context, ViewGroup viewGroup, int i, aao aao, TwitterScribeAssociation twitterScribeAssociation, List<MediaImageView> list, LayoutInflater layoutInflater) {
        this.g = list;
        this.e = context;
        this.b = a(layoutInflater, context, viewGroup);
        this.b.setTag(this);
        this.a = i;
        this.c = aao;
        this.d = twitterScribeAssociation;
    }

    public ViewGroup a() {
        return this.b;
    }

    public Tweet b() {
        return this.f != null ? this.f.a : null;
    }
}
