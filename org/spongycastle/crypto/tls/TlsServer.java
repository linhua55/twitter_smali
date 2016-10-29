package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;

/* compiled from: Twttr */
public interface TlsServer extends TlsPeer {
    ProtocolVersion a() throws IOException;

    void a(Hashtable hashtable) throws IOException;

    void a(Vector vector) throws IOException;

    void a(Certificate certificate) throws IOException;

    void a(ProtocolVersion protocolVersion) throws IOException;

    void a(int[] iArr) throws IOException;

    void a(short[] sArr) throws IOException;

    int b() throws IOException;

    short d() throws IOException;

    Hashtable f() throws IOException;

    Vector g() throws IOException;

    TlsCredentials h() throws IOException;

    CertificateStatus i() throws IOException;

    TlsKeyExchange j() throws IOException;

    CertificateRequest k() throws IOException;

    NewSessionTicket l() throws IOException;
}
