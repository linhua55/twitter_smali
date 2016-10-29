package com.twitter.model.json.common;

import ctc;

/* compiled from: Twttr */
final class k implements ctc<String, Long> {
    k() {
    }

    public Long a(String str) {
        try {
            return Long.valueOf(str);
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
