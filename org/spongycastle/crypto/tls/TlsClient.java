package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;

/* compiled from: Twttr */
public interface TlsClient extends TlsPeer {
    void a(int i);

    void a(Hashtable hashtable) throws IOException;

    void a(Vector vector) throws IOException;

    void a(NewSessionTicket newSessionTicket) throws IOException;

    void a(ProtocolVersion protocolVersion) throws IOException;

    void a(short s);

    void a(byte[] bArr);

    Vector b() throws IOException;

    TlsKeyExchange d() throws IOException;

    TlsAuthentication g() throws IOException;
}
