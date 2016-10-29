package com.twitter.library.media.manager;

import com.twitter.media.model.ImageFormat;
import com.twitter.media.request.d;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import java.util.List;

/* compiled from: Twttr */
final class ak extends d {
    ak() {
    }

    public List<String> a(String str, Size size) {
        if (size.c()) {
            return n.b(str);
        }
        int lastIndexOf = ImageFormat.a(str) != ImageFormat.INVALID ? str.lastIndexOf(".") : str.length();
        int length = lastIndexOf - UserImageRequest$AvatarSize.f.suffix.length();
        if (!str.startsWith(UserImageRequest$AvatarSize.f.suffix, length)) {
            return n.b(str);
        }
        int a = size.a();
        UserImageRequest$AvatarSize userImageRequest$AvatarSize = UserImageRequest$AvatarSize.REASONABLY_SMALL;
        for (UserImageRequest$AvatarSize userImageRequest$AvatarSize2 : UserImageRequest$AvatarSize.values()) {
            if (userImageRequest$AvatarSize2.pixelSize >= a) {
                break;
            }
        }
        UserImageRequest$AvatarSize userImageRequest$AvatarSize22 = userImageRequest$AvatarSize;
        if (userImageRequest$AvatarSize22 != UserImageRequest$AvatarSize.f) {
            str = length;
        }
        return n.b(str);
    }
}
