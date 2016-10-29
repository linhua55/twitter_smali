package com.twitter.media.request.process;

import com.twitter.media.request.ImageResponse;

/* compiled from: Twttr */
public class ImagePostProcessException extends Exception {
    public final ImageResponse imageResponse;

    public ImagePostProcessException(ImageResponse imageResponse) {
        this.imageResponse = imageResponse;
    }
}
