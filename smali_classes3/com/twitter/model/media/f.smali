.class public Lcom/twitter/model/media/f;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/media/EditableImage;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/twitter/model/media/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/twitter/model/media/f;

    invoke-direct {v0}, Lcom/twitter/model/media/f;-><init>()V

    sput-object v0, Lcom/twitter/model/media/f;->a:Lcom/twitter/model/media/f;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/media/EditableImage;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 206
    sget-object v0, Lcom/twitter/media/model/ImageFile;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/model/ImageFile;

    .line 207
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v7

    .line 209
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v8

    .line 210
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v9

    .line 211
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v10

    .line 212
    sget-object v1, Lcom/twitter/model/core/am;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v11

    .line 215
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->o()B

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    move-object v2, v3

    .line 217
    :goto_0
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    sget-object v1, Lcom/twitter/util/math/c;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/util/math/c;

    move-object v4, v1

    .line 224
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_4

    .line 226
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 230
    :goto_2
    if-nez v1, :cond_3

    .line 231
    invoke-virtual {v0}, Lcom/twitter/media/model/ImageFile;->a()Landroid/net/Uri;

    move-result-object v1

    move-object v5, v1

    .line 237
    :goto_3
    :try_start_1
    sget-object v1, Lcom/twitter/model/media/MediaSource;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v1, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/media/MediaSource;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    :try_start_2
    sget-object v12, Lcpo;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v12}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 241
    :goto_4
    if-nez v1, :cond_0

    .line 242
    invoke-static {v6}, Lcom/twitter/model/media/MediaSource;->a(Ljava/lang/String;)Lcom/twitter/model/media/MediaSource;

    move-result-object v1

    .line 245
    :cond_0
    new-instance v6, Lcom/twitter/model/media/EditableImage;

    invoke-direct {v6, v0, v5, v1}, Lcom/twitter/model/media/EditableImage;-><init>(Lcom/twitter/media/model/ImageFile;Landroid/net/Uri;Lcom/twitter/model/media/MediaSource;)V

    .line 246
    iput-boolean v7, v6, Lcom/twitter/model/media/EditableImage;->b:Z

    .line 247
    iput v8, v6, Lcom/twitter/model/media/EditableImage;->c:I

    .line 248
    iput v9, v6, Lcom/twitter/model/media/EditableImage;->d:F

    .line 249
    iput v10, v6, Lcom/twitter/model/media/EditableImage;->e:I

    .line 250
    iput-object v11, v6, Lcom/twitter/model/media/EditableImage;->g:Ljava/util/List;

    .line 251
    iput-object v2, v6, Lcom/twitter/model/media/EditableImage;->i:Ljava/lang/String;

    .line 252
    iput-object v4, v6, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    .line 253
    iput-object v3, v6, Lcom/twitter/model/media/EditableImage;->h:Ljava/util/List;

    .line 254
    return-object v6

    .line 215
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v4, v3

    .line 220
    goto :goto_1

    .line 228
    :catch_0
    move-exception v1

    move-object v1, v3

    goto :goto_2

    .line 239
    :catch_1
    move-exception v1

    move-object v1, v3

    goto :goto_4

    :catch_2
    move-exception v12

    goto :goto_4

    :cond_3
    move-object v5, v1

    goto :goto_3

    :cond_4
    move-object v1, v3

    goto :goto_2
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/media/EditableImage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    sget-object v0, Lcom/twitter/media/model/ImageFile;->a:Lcom/twitter/util/serialization/ah;

    iget-object v1, p2, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p2}, Lcom/twitter/model/media/EditableImage;->h()Lcom/twitter/model/media/MediaSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/media/MediaSource;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/media/EditableImage;->b:Z

    .line 185
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/media/EditableImage;->c:I

    .line 186
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/media/EditableImage;->d:F

    .line 187
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/media/EditableImage;->e:I

    .line 188
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 189
    iget-object v0, p2, Lcom/twitter/model/media/EditableImage;->g:Ljava/util/List;

    sget-object v1, Lcom/twitter/model/core/am;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 190
    iget-object v0, p2, Lcom/twitter/model/media/EditableImage;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 191
    iget-object v0, p2, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    sget-object v2, Lcom/twitter/util/math/c;->a:Lcom/twitter/util/serialization/ah;

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 197
    :goto_0
    invoke-virtual {p2}, Lcom/twitter/model/media/EditableImage;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 198
    sget-object v0, Lcom/twitter/model/media/MediaSource;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p2}, Lcom/twitter/model/media/EditableImage;->h()Lcom/twitter/model/media/MediaSource;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 199
    iget-object v0, p2, Lcom/twitter/model/media/EditableImage;->h:Ljava/util/List;

    sget-object v1, Lcpo;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 200
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    check-cast p2, Lcom/twitter/model/media/EditableImage;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/media/f;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/media/EditableImage;)V

    return-void
.end method

.method protected synthetic b(Lcom/twitter/util/serialization/aj;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/media/f;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/media/EditableImage;

    move-result-object v0

    return-object v0
.end method
