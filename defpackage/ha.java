package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.util.HashSet;

/* compiled from: Twttr */
/* renamed from: ha */
public class ha {
    protected final Object a;
    protected String b;
    protected String c;
    protected HashSet<String> d;

    private ha(Object obj) {
        this.a = obj;
    }

    public static ha a(JsonParser jsonParser) {
        return new ha(jsonParser);
    }

    public static ha a(JsonGenerator jsonGenerator) {
        return new ha(jsonGenerator);
    }

    public ha a() {
        return new ha(this.a);
    }

    public void b() {
        this.b = null;
        this.c = null;
        this.d = null;
    }

    public JsonLocation c() {
        if (this.a instanceof JsonParser) {
            return ((JsonParser) this.a).f();
        }
        return null;
    }

    public boolean a(String str) throws JsonParseException {
        if (this.b == null) {
            this.b = str;
            return false;
        } else if (str.equals(this.b)) {
            return true;
        } else {
            if (this.c == null) {
                this.c = str;
                return false;
            } else if (str.equals(this.c)) {
                return true;
            } else {
                if (this.d == null) {
                    this.d = new HashSet(16);
                    this.d.add(this.b);
                    this.d.add(this.c);
                }
                if (this.d.add(str)) {
                    return false;
                }
                return true;
            }
        }
    }
}
