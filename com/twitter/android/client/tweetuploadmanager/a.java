package com.twitter.android.client.tweetuploadmanager;

import android.content.Context;
import bmx;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.library.api.upload.aa;
import com.twitter.library.media.util.t;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.util.MediaException;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.z;
import java.util.List;

/* compiled from: Twttr */
public class a extends AsyncOperation<bmx, Boolean> {
    private final Context a;
    private final List<aa> b;
    private final z<bmx> c;
    private Exception g;

    protected /* synthetic */ Object c() {
        return e();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return b();
    }

    public a(Context context, List<aa> list, z<bmx> zVar) {
        super("MediaPreparationOperation");
        this.b = list;
        this.a = context;
        this.c = zVar;
        ExecutionClass executionClass = ExecutionClass.d;
        ExecutionClass executionClass2 = executionClass;
        for (aa b : list) {
            if (b.b().g == MediaType.d) {
                executionClass = ExecutionClass.e;
            } else {
                executionClass = executionClass2;
            }
            executionClass2 = executionClass;
        }
        a(executionClass2);
    }

    public Exception a() {
        return this.g;
    }

    private void f() {
        for (aa h : this.b) {
            h.h();
        }
    }

    protected Boolean b() throws InterruptedException {
        for (aa aaVar : this.b) {
            if (isCancelled()) {
                f();
                return Boolean.valueOf(false);
            } else if (aaVar.d()) {
                EditableMedia a = aaVar.b().a(2);
                if (a == null) {
                    throw new MediaException("the original media is unavailable when it is prepared");
                }
                try {
                    MediaFile a2 = t.a(this.a, a);
                    if (a2 == null) {
                        throw new MediaException("Failed to process media");
                    }
                    aaVar.a(a2);
                } catch (MediaException e) {
                    this.g = e;
                    f();
                    return Boolean.valueOf(false);
                }
            }
        }
        return Boolean.valueOf(true);
    }

    protected Boolean e() {
        f();
        return null;
    }
}
