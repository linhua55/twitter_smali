.class Lcom/twitter/android/gn;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lzz;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lzv;


# direct methods
.method constructor <init>(Landroid/content/Context;Lzv;)V
    .locals 1

    .prologue
    .line 1119
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/gn;->a:Landroid/content/Context;

    .line 1121
    iput-object p2, p0, Lcom/twitter/android/gn;->b:Lzv;

    .line 1122
    return-void
.end method

.method private a(Laac;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1157
    invoke-virtual {p1}, Laac;->f()Landroid/widget/ImageView;

    move-result-object v0

    .line 1159
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1160
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 1161
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1163
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/twitter/android/gn;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1164
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-static {v0, v2, v3}, Lcom/twitter/media/util/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/io/File;

    move-result-object v2

    .line 1165
    if-eqz v2, :cond_0

    .line 1167
    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/gn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/media/util/j;->a(Landroid/content/Context;)Lcom/twitter/media/util/j;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/media/util/o;

    invoke-direct {v1, v2}, Lcom/twitter/library/media/util/o;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/twitter/media/util/j;->b(Lcom/twitter/media/util/k;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1169
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/platform/PlatformContext;->d()Lcom/twitter/platform/p;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/twitter/platform/p;->b(Ljava/io/File;)Z

    .line 1173
    :goto_1
    return-object v0

    .line 1169
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/platform/PlatformContext;->d()Lcom/twitter/platform/p;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/twitter/platform/p;->b(Ljava/io/File;)Z

    throw v0

    :cond_0
    move-object v0, v1

    .line 1173
    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1177
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1178
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1179
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1181
    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "image/webp"

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Lzz;)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1127
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Laac;

    .line 1129
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/twitter/android/gn;->b:Lzv;

    iget v3, v0, Laac;->a:I

    .line 1130
    invoke-virtual {v2, v3}, Lzv;->a(I)Laab;

    move-result-object v2

    .line 1131
    :goto_0
    if-eqz v2, :cond_2

    .line 1132
    iget-object v3, p0, Lcom/twitter/android/gn;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v3

    iget-object v4, v2, Laab;->c:Lcom/twitter/media/request/b;

    .line 1133
    invoke-virtual {v3, v4}, Lcom/twitter/library/media/manager/l;->d(Lcom/twitter/media/request/b;)Ljava/io/File;

    move-result-object v3

    .line 1134
    if-eqz v3, :cond_2

    .line 1135
    iget-object v1, v2, Laab;->c:Lcom/twitter/media/request/b;

    iget-object v1, v1, Lcom/twitter/media/request/b;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 1136
    monitor-enter v3

    .line 1137
    :try_start_0
    invoke-static {v3}, Lcom/twitter/android/gn;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1141
    invoke-direct {p0, v0}, Lcom/twitter/android/gn;->a(Laac;)Ljava/io/File;

    move-result-object v0

    monitor-exit v3

    .line 1150
    :goto_1
    return-object v0

    :cond_0
    move-object v2, v1

    .line 1130
    goto :goto_0

    .line 1143
    :cond_1
    new-instance v0, Lcom/twitter/library/media/util/o;

    invoke-direct {v0, v3}, Lcom/twitter/library/media/util/o;-><init>(Ljava/io/File;)V

    .line 1144
    iput-object v1, v0, Lcom/twitter/library/media/util/o;->k:Ljava/lang/String;

    .line 1145
    iget-object v1, p0, Lcom/twitter/android/gn;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/media/util/j;->a(Landroid/content/Context;)Lcom/twitter/media/util/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/media/util/j;->a(Lcom/twitter/media/util/k;)Ljava/io/File;

    move-result-object v0

    monitor-exit v3

    goto :goto_1

    .line 1147
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    .line 1150
    goto :goto_1
.end method

.method protected a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 1186
    if-eqz p1, :cond_0

    const v0, 0x7f0a071a

    .line 1187
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/gn;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1188
    return-void

    .line 1186
    :cond_0
    const v0, 0x7f0a0719

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1115
    check-cast p1, [Lzz;

    invoke-virtual {p0, p1}, Lcom/twitter/android/gn;->a([Lzz;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1115
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/twitter/android/gn;->a(Ljava/io/File;)V

    return-void
.end method
