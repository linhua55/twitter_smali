package com.fasterxml.jackson.core.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;

/* compiled from: Twttr */
public abstract class InputDecorator implements Serializable {
    private static final long serialVersionUID = 1;

    public abstract InputStream a(b bVar, InputStream inputStream) throws IOException;

    public abstract InputStream a(b bVar, byte[] bArr, int i, int i2) throws IOException;

    public abstract Reader a(b bVar, Reader reader) throws IOException;
}
