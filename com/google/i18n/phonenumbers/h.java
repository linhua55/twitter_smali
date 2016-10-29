package com.google.i18n.phonenumbers;

import java.io.InputStream;

/* compiled from: Twttr */
final class h implements d {
    h() {
    }

    public InputStream a(String str) {
        return PhoneNumberUtil.class.getResourceAsStream(str);
    }
}
