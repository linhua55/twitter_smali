package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* compiled from: Twttr */
public final class q {
    private static final Logger a;

    static {
        a = Logger.getLogger(q.class.getName());
    }

    private q() {
    }

    public static j a(ab abVar) {
        if (abVar != null) {
            return new w(abVar);
        }
        throw new IllegalArgumentException("source == null");
    }

    public static i a(aa aaVar) {
        if (aaVar != null) {
            return new u(aaVar);
        }
        throw new IllegalArgumentException("sink == null");
    }

    public static aa a(OutputStream outputStream) {
        return a(outputStream, new ac());
    }

    private static aa a(OutputStream outputStream, ac acVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        } else if (acVar != null) {
            return new r(acVar, outputStream);
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    public static aa a(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        ac c = c(socket);
        return c.sink(a(socket.getOutputStream(), c));
    }

    public static ab a(InputStream inputStream) {
        return a(inputStream, new ac());
    }

    private static ab a(InputStream inputStream, ac acVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        } else if (acVar != null) {
            return new s(acVar, inputStream);
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    public static ab a(File file) throws FileNotFoundException {
        if (file != null) {
            return a(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static aa b(File file) throws FileNotFoundException {
        if (file != null) {
            return a(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static aa c(File file) throws FileNotFoundException {
        if (file != null) {
            return a(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static ab b(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        ac c = c(socket);
        return c.source(a(socket.getInputStream(), c));
    }

    private static a c(Socket socket) {
        return new t(socket);
    }
}
