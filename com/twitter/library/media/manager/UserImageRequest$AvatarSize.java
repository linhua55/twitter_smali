package com.twitter.library.media.manager;

/* compiled from: Twttr */
enum UserImageRequest$AvatarSize {
    MINI("_mini", 24),
    NORMAL("_normal", 48),
    BIGGER("_bigger", 73),
    X96("_x96", 96),
    REASONABLY_SMALL("_reasonably_small", 128);
    
    public static final UserImageRequest$AvatarSize f;
    public final int pixelSize;
    public final String suffix;

    static {
        f = NORMAL;
    }

    private UserImageRequest$AvatarSize(String str, int i) {
        this.suffix = str;
        this.pixelSize = i;
    }
}
