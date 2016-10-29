package com.twitter.android.composer;

import com.twitter.android.an;
import com.twitter.android.av.av;
import com.twitter.library.client.Session;
import com.twitter.model.av.n;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.l;
import com.twitter.util.collection.CollectionUtils;
import defpackage.um;
import java.util.List;
import rx.o;

/* compiled from: Twttr */
public class ax extends an<List<DraftAttachment>> {
    protected /* synthetic */ o b(Session session, Object obj) {
        return a(session, (List) obj);
    }

    public ax(um umVar) {
        super(umVar);
    }

    protected o<n> a(Session session, List<DraftAttachment> list) {
        return b(list) ? this.a.a(session) : null;
    }

    public void a(List<DraftAttachment> list, n nVar) {
        if (a() != null) {
            l c = c(list);
            if (c != null) {
                c.a(nVar);
            }
        }
    }

    public n a(List<DraftAttachment> list) {
        n a = a();
        if (a == null) {
            return null;
        }
        l c = c(list);
        if (c == null) {
            return null;
        }
        n k = c.k();
        return k == null ? a : k;
    }

    private static boolean b(List<DraftAttachment> list) {
        return av.a() && c(list) != null;
    }

    private static l c(List<DraftAttachment> list) {
        DraftAttachment draftAttachment = (DraftAttachment) CollectionUtils.b((List) list);
        if (draftAttachment == null) {
            return null;
        }
        EditableMedia a = draftAttachment.a(3);
        return a instanceof l ? (l) a : null;
    }
}
