package org.spongycastle.x509;

import java.security.cert.CertPath;
import org.spongycastle.i18n.LocalizedException;

/* compiled from: Twttr */
public class CertPathReviewerException extends LocalizedException {
    private CertPath certPath;
    private int index;
}
