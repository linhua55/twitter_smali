package com.twitter.model.json.common;

import java.io.IOException;

/* compiled from: Twttr */
public class InvalidJsonFormatException extends IOException {
    private static final long serialVersionUID = -756408891541348081L;

    public InvalidJsonFormatException(String str) {
        super(str);
    }
}
