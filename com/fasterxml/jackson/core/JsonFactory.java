package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.InputDecorator;
import com.fasterxml.jackson.core.io.OutputDecorator;
import com.fasterxml.jackson.core.io.b;
import com.fasterxml.jackson.core.io.h;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.core.util.a;
import gz;
import he;
import hf;
import hh;
import hi;
import hl;
import java.io.CharArrayReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringReader;
import java.io.Writer;
import java.lang.ref.SoftReference;

/* compiled from: Twttr */
public class JsonFactory implements Serializable {
    protected static final int a;
    protected static final int b;
    protected static final int c;
    protected static final ThreadLocal<SoftReference<a>> d;
    private static final d g;
    private static final long serialVersionUID = 3306684576057132431L;
    protected CharacterEscapes _characterEscapes;
    protected int _factoryFeatures;
    protected int _generatorFeatures;
    protected InputDecorator _inputDecorator;
    protected b _objectCodec;
    protected OutputDecorator _outputDecorator;
    protected int _parserFeatures;
    protected d _rootValueSeparator;
    protected final transient hl e;
    protected final transient hi f;

    /* compiled from: Twttr */
    public enum Feature {
        INTERN_FIELD_NAMES(true),
        CANONICALIZE_FIELD_NAMES(true),
        FAIL_ON_SYMBOL_HASH_OVERFLOW(true);
        
        private final boolean _defaultState;

        public static int a() {
            int i = JsonFactory.c;
            Feature[] values = values();
            int length = values.length;
            for (int i2 = JsonFactory.c; i2 < length; i2++) {
                Feature feature = values[i2];
                if (feature.b()) {
                    i |= feature.c();
                }
            }
            return i;
        }

        private Feature(boolean z) {
            this._defaultState = z;
        }

        public boolean b() {
            return this._defaultState;
        }

        public boolean a(int i) {
            return (c() & i) != 0;
        }

        public int c() {
            return 1 << ordinal();
        }
    }

    static {
        a = Feature.a();
        b = com.fasterxml.jackson.core.JsonParser.Feature.a();
        c = JsonGenerator$Feature.a();
        g = DefaultPrettyPrinter.a;
        d = new ThreadLocal();
    }

    public JsonFactory() {
        this(null);
    }

    public JsonFactory(b bVar) {
        this.e = hl.a();
        this.f = hi.a();
        this._factoryFeatures = a;
        this._parserFeatures = b;
        this._generatorFeatures = c;
        this._rootValueSeparator = g;
        this._objectCodec = bVar;
    }

    protected JsonFactory(JsonFactory jsonFactory, b bVar) {
        this.e = hl.a();
        this.f = hi.a();
        this._factoryFeatures = a;
        this._parserFeatures = b;
        this._generatorFeatures = c;
        this._rootValueSeparator = g;
        this._objectCodec = null;
        this._factoryFeatures = jsonFactory._factoryFeatures;
        this._parserFeatures = jsonFactory._parserFeatures;
        this._generatorFeatures = jsonFactory._generatorFeatures;
        this._characterEscapes = jsonFactory._characterEscapes;
        this._inputDecorator = jsonFactory._inputDecorator;
        this._outputDecorator = jsonFactory._outputDecorator;
        this._rootValueSeparator = jsonFactory._rootValueSeparator;
    }

    protected Object readResolve() {
        return new JsonFactory(this, this._objectCodec);
    }

    public boolean a() {
        return true;
    }

    public JsonParser a(InputStream inputStream) throws IOException, JsonParseException {
        b a = a((Object) inputStream, false);
        return a(b(inputStream, a), a);
    }

    public JsonParser a(Reader reader) throws IOException, JsonParseException {
        b a = a((Object) reader, false);
        return a(b(reader, a), a);
    }

    public JsonParser a(byte[] bArr) throws IOException, JsonParseException {
        b a = a((Object) bArr, true);
        if (this._inputDecorator != null) {
            InputStream a2 = this._inputDecorator.a(a, bArr, c, bArr.length);
            if (a2 != null) {
                return a(a2, a);
            }
        }
        return a(bArr, c, bArr.length, a);
    }

    public JsonParser a(String str) throws IOException, JsonParseException {
        int length = str.length();
        if (this._inputDecorator != null || length > 32768 || !a()) {
            return a(new StringReader(str));
        }
        b a = a((Object) str, true);
        char[] a2 = a.a(length);
        str.getChars(c, length, a2, c);
        return a(a2, c, length, a, true);
    }

    public JsonParser a(char[] cArr) throws IOException {
        return a(cArr, (int) c, cArr.length);
    }

    public JsonParser a(char[] cArr, int i, int i2) throws IOException {
        if (this._inputDecorator != null) {
            return a(new CharArrayReader(cArr, i, i2));
        }
        return a(cArr, i, i2, a((Object) cArr, true), false);
    }

    public JsonGenerator a(OutputStream outputStream, JsonEncoding jsonEncoding) throws IOException {
        b a = a((Object) outputStream, false);
        a.a(jsonEncoding);
        if (jsonEncoding == JsonEncoding.UTF8) {
            return a(b(outputStream, a), a);
        }
        return a(b(a(outputStream, jsonEncoding, a), a), a);
    }

    public JsonGenerator a(OutputStream outputStream) throws IOException {
        return a(outputStream, JsonEncoding.UTF8);
    }

    public JsonGenerator a(Writer writer) throws IOException {
        b a = a((Object) writer, false);
        return a(b(writer, a), a);
    }

    protected JsonParser a(InputStream inputStream, b bVar) throws IOException {
        return new gz(bVar, inputStream).a(this._parserFeatures, this._objectCodec, this.f, this.e, this._factoryFeatures);
    }

    protected JsonParser a(Reader reader, b bVar) throws IOException {
        return new he(bVar, this._parserFeatures, reader, this._objectCodec, this.e.b(this._factoryFeatures));
    }

    protected JsonParser a(char[] cArr, int i, int i2, b bVar, boolean z) throws IOException {
        return new he(bVar, this._parserFeatures, null, this._objectCodec, this.e.b(this._factoryFeatures), cArr, i, i + i2, z);
    }

    protected JsonParser a(byte[] bArr, int i, int i2, b bVar) throws IOException {
        return new gz(bVar, bArr, i, i2).a(this._parserFeatures, this._objectCodec, this.f, this.e, this._factoryFeatures);
    }

    protected JsonGenerator a(Writer writer, b bVar) throws IOException {
        hh hhVar = new hh(bVar, this._generatorFeatures, this._objectCodec, writer);
        if (this._characterEscapes != null) {
            hhVar.a(this._characterEscapes);
        }
        d dVar = this._rootValueSeparator;
        if (dVar != g) {
            hhVar.a(dVar);
        }
        return hhVar;
    }

    protected JsonGenerator a(OutputStream outputStream, b bVar) throws IOException {
        hf hfVar = new hf(bVar, this._generatorFeatures, this._objectCodec, outputStream);
        if (this._characterEscapes != null) {
            hfVar.a(this._characterEscapes);
        }
        d dVar = this._rootValueSeparator;
        if (dVar != g) {
            hfVar.a(dVar);
        }
        return hfVar;
    }

    protected Writer a(OutputStream outputStream, JsonEncoding jsonEncoding, b bVar) throws IOException {
        if (jsonEncoding == JsonEncoding.UTF8) {
            return new h(bVar, outputStream);
        }
        return new OutputStreamWriter(outputStream, jsonEncoding.a());
    }

    protected final InputStream b(InputStream inputStream, b bVar) throws IOException {
        if (this._inputDecorator == null) {
            return inputStream;
        }
        InputStream a = this._inputDecorator.a(bVar, inputStream);
        if (a != null) {
            return a;
        }
        return inputStream;
    }

    protected final Reader b(Reader reader, b bVar) throws IOException {
        if (this._inputDecorator == null) {
            return reader;
        }
        Reader a = this._inputDecorator.a(bVar, reader);
        if (a != null) {
            return a;
        }
        return reader;
    }

    protected final OutputStream b(OutputStream outputStream, b bVar) throws IOException {
        if (this._outputDecorator == null) {
            return outputStream;
        }
        OutputStream a = this._outputDecorator.a(bVar, outputStream);
        if (a != null) {
            return a;
        }
        return outputStream;
    }

    protected final Writer b(Writer writer, b bVar) throws IOException {
        if (this._outputDecorator == null) {
            return writer;
        }
        Writer a = this._outputDecorator.a(bVar, writer);
        if (a != null) {
            return a;
        }
        return writer;
    }

    public a b() {
        SoftReference softReference = (SoftReference) d.get();
        a aVar = softReference == null ? null : (a) softReference.get();
        if (aVar != null) {
            return aVar;
        }
        aVar = new a();
        d.set(new SoftReference(aVar));
        return aVar;
    }

    protected b a(Object obj, boolean z) {
        return new b(b(), obj, z);
    }
}
