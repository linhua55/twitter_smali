package com.google.gson;

import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import oz;
import pb;

/* compiled from: Twttr */
public abstract class s<T> {
    public abstract T read(a aVar) throws IOException;

    public abstract void write(c cVar, T t) throws IOException;

    public final void toJson(Writer writer, T t) throws IOException {
        write(new c(writer), t);
    }

    public final s<T> nullSafe() {
        return new t(this);
    }

    public final String toJson(T t) throws IOException {
        Writer stringWriter = new StringWriter();
        toJson(stringWriter, t);
        return stringWriter.toString();
    }

    public final n toJsonTree(T t) {
        try {
            pb pbVar = new pb();
            write(pbVar, t);
            return pbVar.a();
        } catch (Throwable e) {
            throw new JsonIOException(e);
        }
    }

    public final T fromJson(Reader reader) throws IOException {
        return read(new a(reader));
    }

    public final T fromJson(String str) throws IOException {
        return fromJson(new StringReader(str));
    }

    public final T fromJsonTree(n nVar) {
        try {
            return read(new oz(nVar));
        } catch (Throwable e) {
            throw new JsonIOException(e);
        }
    }
}
