package com.twitter.model.media;

import android.net.Uri;
import ckf;
import com.twitter.media.model.ImageFile;
import com.twitter.model.core.ag;
import com.twitter.util.math.c;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
public class d extends k<EditableImage> {
    static final d a;

    protected d() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    static {
        a = new d();
    }

    protected void a(q qVar, EditableImage editableImage) throws IOException {
        ImageFile.a.b(qVar, editableImage.k);
        qVar.b(editableImage.h().a()).b(editableImage.b).e(editableImage.c).b(editableImage.d).e(editableImage.e);
        s.a(qVar, editableImage.g, ag.a);
        qVar.b(editableImage.i);
        if (editableImage.f != null) {
            qVar.b(true).a(editableImage.f, c.a);
        } else {
            qVar.b(false);
        }
        qVar.b(editableImage.d().toString());
        MediaSource.a.b(qVar, editableImage.h());
        s.a(qVar, editableImage.h, ckf.a);
    }

    protected EditableImage a(p pVar, int i) throws IOException, ClassNotFoundException {
        c cVar;
        Uri a;
        MediaSource mediaSource;
        List list = null;
        ImageFile imageFile = (ImageFile) ImageFile.a.c(pVar);
        String p = pVar.p();
        boolean d = pVar.d();
        int e = pVar.e();
        float g = pVar.g();
        int e2 = pVar.e();
        List a2 = s.a(pVar, ag.a);
        String i2 = pVar.o() == 6 ? list : pVar.i();
        if (pVar.d()) {
            cVar = (c) pVar.a(c.a);
        } else {
            Object obj = list;
        }
        Object obj2;
        try {
            String i3 = pVar.i();
            if (i3 != null) {
                Uri parse = Uri.parse(i3);
            } else {
                obj2 = list;
            }
        } catch (IOException e3) {
            obj2 = list;
        }
        if (parse == null) {
            a = imageFile.a();
        } else {
            a = parse;
        }
        try {
            mediaSource = (MediaSource) MediaSource.a.a(pVar);
            try {
                list = s.a(pVar, ckf.a);
            } catch (IOException e4) {
            }
        } catch (IOException e5) {
            mediaSource = list;
        }
        if (mediaSource == null) {
            mediaSource = MediaSource.a(p);
        }
        EditableImage editableImage = new EditableImage(imageFile, a, mediaSource);
        editableImage.b = d;
        editableImage.c = e;
        editableImage.d = g;
        editableImage.e = e2;
        editableImage.g = a2;
        editableImage.i = i2;
        editableImage.f = cVar;
        editableImage.h = list;
        return editableImage;
    }
}
