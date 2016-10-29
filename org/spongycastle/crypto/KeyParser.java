package org.spongycastle.crypto;

import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;

/* compiled from: Twttr */
public interface KeyParser {
    AsymmetricKeyParameter a(InputStream inputStream) throws IOException;
}
