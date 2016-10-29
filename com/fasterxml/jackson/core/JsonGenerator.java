package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.util.e;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.math.BigDecimal;

/* compiled from: Twttr */
public abstract class JsonGenerator implements Closeable, Flushable {
    protected c a;

    public abstract void a() throws IOException;

    public abstract void a(char c) throws IOException;

    public abstract void a(double d) throws IOException;

    public abstract void a(float f) throws IOException;

    public abstract void a(long j) throws IOException;

    public abstract void a(String str) throws IOException;

    public abstract void a(BigDecimal bigDecimal) throws IOException;

    public abstract void a(boolean z) throws IOException;

    public abstract void b() throws IOException;

    public abstract void b(int i) throws IOException;

    public abstract void b(String str) throws IOException;

    public abstract void c() throws IOException;

    public abstract void c(String str) throws IOException;

    public abstract void close() throws IOException;

    public abstract void d() throws IOException;

    public abstract void e() throws IOException;

    public abstract void flush() throws IOException;

    protected JsonGenerator() {
    }

    public JsonGenerator a(int i) {
        return this;
    }

    public JsonGenerator a(CharacterEscapes characterEscapes) {
        return this;
    }

    public JsonGenerator a(d dVar) {
        throw new UnsupportedOperationException();
    }

    public void b(d dVar) throws IOException {
        c(dVar.a());
    }

    public void a(String str, String str2) throws IOException {
        a(str);
        b(str2);
    }

    public final void a(String str, boolean z) throws IOException {
        a(str);
        a(z);
    }

    public final void a(String str, int i) throws IOException {
        a(str);
        b(i);
    }

    public final void a(String str, long j) throws IOException {
        a(str);
        a(j);
    }

    public final void a(String str, double d) throws IOException {
        a(str);
        a(d);
    }

    public final void a(String str, float f) throws IOException {
        a(str);
        a(f);
    }

    public final void a(String str, BigDecimal bigDecimal) throws IOException {
        a(str);
        a(bigDecimal);
    }

    public final void d(String str) throws IOException {
        a(str);
        a();
    }

    public final void e(String str) throws IOException {
        a(str);
        c();
    }

    protected void f(String str) throws JsonGenerationException {
        throw new JsonGenerationException(str);
    }

    protected final void f() {
        e.a();
    }
}
