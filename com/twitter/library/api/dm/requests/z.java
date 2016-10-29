package com.twitter.library.api.dm.requests;

import android.content.Context;
import com.twitter.library.api.upload.MediaUsage;
import com.twitter.library.api.upload.h;
import com.twitter.library.api.upload.i;
import com.twitter.library.client.Session;
import com.twitter.library.media.util.t;
import com.twitter.library.service.aa;
import com.twitter.library.service.e;
import com.twitter.media.model.MediaFile;
import com.twitter.model.media.EditableMedia;
import java.util.Collections;
import java.util.concurrent.ExecutionException;

/* compiled from: Twttr */
public class z extends v {
    private final EditableMedia a;
    private long b;

    public z(Context context, Session session, String str, EditableMedia editableMedia) {
        super(context, session, str);
        this.a = editableMedia;
    }

    protected boolean b(aa aaVar) {
        if (!super.b(aaVar)) {
            return false;
        }
        MediaFile a = t.a(this.p, this.a);
        if (a == null) {
            return false;
        }
        try {
            h hVar = (h) new i(this.p, N()).a(a, Collections.emptyList(), null, MediaUsage.DM).get();
            if (hVar == null || !hVar.b()) {
                return false;
            }
            this.b = hVar.a;
            return true;
        } catch (InterruptedException e) {
            return false;
        } catch (ExecutionException e2) {
            return false;
        }
    }

    protected e b() {
        return super.b().a("avatar_id", String.valueOf(this.b));
    }
}
