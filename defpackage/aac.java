package defpackage;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.library.client.Session;
import com.twitter.library.media.util.q;
import com.twitter.library.network.w;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.card.property.Vector2F;
import com.twitter.model.core.MediaEntity;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: aac */
public class aac extends PagerAdapter {
    private final Context a;
    private final Session b;
    private final aad c;
    private final aah d;
    private final aao e;
    private final TwitterScribeAssociation f;
    private final SparseArray<aag> g;
    private final List<MediaImageView> h;
    private aag i;
    private List<aai> j;
    private cqp k;

    public aac(Context context, Session session, aao aao, TwitterScribeAssociation twitterScribeAssociation, aah aah, aad aad) {
        this.a = context;
        this.b = session;
        this.e = aao;
        this.f = twitterScribeAssociation;
        this.d = aah;
        this.c = aad;
        this.g = new SparseArray();
        this.h = new ArrayList();
    }

    public void a(cqp cqp) {
        this.k = cqp;
    }

    public void a(List<aai> list) {
        this.j = list;
        this.i = null;
        notifyDataSetChanged();
    }

    public List<aai> a() {
        return this.j != null ? this.j : n.g();
    }

    public void a(MediaEntity mediaEntity, boolean z) {
        a(n.b(new aat(null, mediaEntity, (b) q.a(mediaEntity).a(z ? new w(this.b.h()) : null), mediaEntity.x)));
    }

    public void b(List<ImageSpec> list) {
        List arrayList = new ArrayList(list.size());
        for (ImageSpec imageSpec : list) {
            Vector2F vector2F = imageSpec.d;
            arrayList.add(new aat(null, null, a.a(imageSpec.c, Size.a(vector2F.x, vector2F.y)), imageSpec.e));
        }
        a(arrayList);
    }

    public aai a(int i) {
        if (this.j == null || i < 0 || this.j.size() <= i) {
            return null;
        }
        return (aai) this.j.get(i);
    }

    public aag b(int i) {
        return (aag) this.g.get(i);
    }

    public void finishUpdate(ViewGroup viewGroup) {
        if (this.i != null) {
            aai a = a(this.i.a);
            if (a != null && a.e) {
                a(a, this.i);
            }
        }
    }

    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        if (obj == null) {
            this.i = null;
            return;
        }
        aag aag = (aag) this.g.get(i);
        if (aag == null || aag.a >= getCount()) {
            aag = null;
        }
        this.i = aag;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        aai aai = (aai) this.j.get(i);
        if (aai == null) {
            return null;
        }
        aag a = this.d.a(this.a, aai, viewGroup, i, this.e, this.f, this.h);
        a(aai, a);
        Object a2 = a.a();
        viewGroup.addView(a2);
        this.g.append(i, a);
        return a2;
    }

    private void a(aai aai, aag aag) {
        aag.a(aai, this.k, this.c);
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        View view = (View) obj;
        aag aag = (aag) this.g.get(i);
        if (aag != null) {
            aag.d();
            viewGroup.removeView(view);
            this.g.remove(i);
        }
    }

    public int getCount() {
        if (this.j == null) {
            return 0;
        }
        return this.j.size();
    }

    public boolean isViewFromObject(View view, Object obj) {
        return obj == view;
    }

    public int getItemPosition(Object obj) {
        return ((aag) ((View) obj).getTag()).a < getCount() ? -1 : -2;
    }

    public void b() {
        SparseArray sparseArray = this.g;
        for (int i = 0; i < sparseArray.size(); i++) {
            ((aag) sparseArray.valueAt(i)).c();
        }
    }

    public void c() {
        SparseArray sparseArray = this.g;
        for (int i = 0; i < sparseArray.size(); i++) {
            aag aag = (aag) sparseArray.valueAt(i);
            aai a = a(aag.a);
            if (a != null) {
                a(a, aag);
            }
        }
    }

    public void d() {
        SparseArray sparseArray = this.g;
        for (int i = 0; i < sparseArray.size(); i++) {
            ((aag) sparseArray.valueAt(i)).d();
        }
        this.i = null;
    }
}
