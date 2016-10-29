package com.twitter.library.media.widget;

import android.content.Context;
import cgl;
import com.twitter.library.media.util.q;
import com.twitter.library.media.util.x;
import com.twitter.media.request.b;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.a;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import com.twitter.util.object.ObjectUtils;
import cpb;
import java.util.List;

/* compiled from: Twttr */
public class ab {
    public final Object a;
    public final Size b;
    private final boolean c;

    public ab(EditableMedia editableMedia) {
        this.a = editableMedia;
        this.b = editableMedia.f();
        this.c = false;
    }

    public ab(MediaEntity mediaEntity, boolean z) {
        this.a = mediaEntity;
        this.b = mediaEntity.n;
        this.c = z;
    }

    public ab(cgl cgl) {
        this.a = cgl;
        ImageSpec r = cgl.r();
        this.b = r != null ? Size.a(r.d.x, r.d.y) : Size.b;
        this.c = false;
    }

    public b a(Context context) {
        if (this.a instanceof MediaEntity) {
            b a = q.a((MediaEntity) this.a);
            a.c(this.c);
            return a;
        } else if (this.a instanceof EditableMedia) {
            return x.a(context, (EditableMedia) this.a);
        } else {
            if (this.a instanceof cgl) {
                return q.a((cgl) this.a);
            }
            return null;
        }
    }

    public boolean a() {
        return (this.a instanceof MediaEntity) && cpb.a(((MediaEntity) this.a).m);
    }

    public boolean b() {
        return (this.a instanceof cgl) && ((cgl) this.a).t();
    }

    public String c() {
        if (this.a instanceof a) {
            return ((a) this.a).a();
        }
        return null;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ab) && ObjectUtils.a(this.a, ((ab) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public static List<ab> a(List<EditableMedia> list) {
        if (list == null) {
            return null;
        }
        n a = n.a(list.size());
        for (EditableMedia abVar : list) {
            a.c(new ab(abVar));
        }
        return (List) a.q();
    }

    public static List<ab> a(List<MediaEntity> list, boolean z) {
        if (list == null) {
            return null;
        }
        n a = n.a(list.size());
        for (MediaEntity abVar : list) {
            a.c(new ab(abVar, z));
        }
        return (List) a.q();
    }

    public static List<ab> a(cgl cgl) {
        if (cgl == null || cgl.r() == null) {
            return null;
        }
        return n.b(new ab(cgl));
    }
}
