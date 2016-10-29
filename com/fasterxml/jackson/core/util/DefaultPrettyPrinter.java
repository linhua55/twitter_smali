package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.c;
import com.fasterxml.jackson.core.d;
import com.fasterxml.jackson.core.io.SerializedString;
import java.io.IOException;
import java.io.Serializable;

/* compiled from: Twttr */
public class DefaultPrettyPrinter implements c, Serializable {
    public static final SerializedString a;
    private static final long serialVersionUID = 1;
    protected c _arrayIndenter;
    protected c _objectIndenter;
    protected final d _rootSeparator;
    protected boolean _spacesInObjectEntries;
    protected transient int b;

    static {
        a = new SerializedString(" ");
    }

    public void a(JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        if (this._rootSeparator != null) {
            jsonGenerator.b(this._rootSeparator);
        }
    }

    public void b(JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        jsonGenerator.a('{');
        if (!this._objectIndenter.a()) {
            this.b++;
        }
    }

    public void h(JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        this._objectIndenter.a(jsonGenerator, this.b);
    }

    public void d(JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        if (this._spacesInObjectEntries) {
            jsonGenerator.c(" : ");
        } else {
            jsonGenerator.a(':');
        }
    }

    public void c(JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        jsonGenerator.a(',');
        this._objectIndenter.a(jsonGenerator, this.b);
    }

    public void a(JsonGenerator jsonGenerator, int i) throws IOException, JsonGenerationException {
        if (!this._objectIndenter.a()) {
            this.b--;
        }
        if (i > 0) {
            this._objectIndenter.a(jsonGenerator, this.b);
        } else {
            jsonGenerator.a(' ');
        }
        jsonGenerator.a('}');
    }

    public void e(JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        if (!this._arrayIndenter.a()) {
            this.b++;
        }
        jsonGenerator.a('[');
    }

    public void g(JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        this._arrayIndenter.a(jsonGenerator, this.b);
    }

    public void f(JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        jsonGenerator.a(',');
        this._arrayIndenter.a(jsonGenerator, this.b);
    }

    public void b(JsonGenerator jsonGenerator, int i) throws IOException, JsonGenerationException {
        if (!this._arrayIndenter.a()) {
            this.b--;
        }
        if (i > 0) {
            this._arrayIndenter.a(jsonGenerator, this.b);
        } else {
            jsonGenerator.a(' ');
        }
        jsonGenerator.a(']');
    }
}
