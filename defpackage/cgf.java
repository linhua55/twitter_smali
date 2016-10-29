package defpackage;

import cgg;
import com.twitter.model.media.EditableImage;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cgf */
public class cgf {
    public static final n<cgf> a;
    private final List<String> b;
    private String c;
    private EditableImage d;

    static {
        a = new cgg();
    }

    public cgf(List<String> list, String str, EditableImage editableImage) {
        this.b = list;
        this.c = str;
        this.d = editableImage;
    }

    public List<String> a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public EditableImage c() {
        return this.d;
    }

    public void a(String str) {
        this.c = str;
    }

    public boolean d() {
        for (String trim : this.b) {
            if (!trim.trim().isEmpty()) {
                return false;
            }
        }
        return this.d == null;
    }

    public void a(int i, String str) {
        this.b.set(i, str);
    }

    public void b(String str) {
        this.b.add(str);
    }

    public void a(EditableImage editableImage) {
        this.d = editableImage;
    }
}
