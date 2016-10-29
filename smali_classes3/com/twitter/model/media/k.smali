.class public Lcom/twitter/model/media/k;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/media/EditableVideo;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/twitter/model/media/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/twitter/model/media/k;

    invoke-direct {v0}, Lcom/twitter/model/media/k;-><init>()V

    sput-object v0, Lcom/twitter/model/media/k;->a:Lcom/twitter/model/media/k;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/media/EditableVideo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    sget-object v0, Lcom/twitter/media/model/VideoFile;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/model/VideoFile;

    .line 159
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v5

    .line 161
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v6

    .line 165
    :try_start_0
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_2

    .line 167
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 171
    :goto_0
    if-nez v1, :cond_1

    .line 172
    invoke-virtual {v0}, Lcom/twitter/media/model/VideoFile;->a()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    .line 177
    :goto_1
    :try_start_1
    sget-object v1, Lcom/twitter/model/media/MediaSource;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v1, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/media/MediaSource;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :goto_2
    if-nez v1, :cond_0

    .line 181
    invoke-static {v4}, Lcom/twitter/model/media/MediaSource;->a(Ljava/lang/String;)Lcom/twitter/model/media/MediaSource;

    move-result-object v1

    .line 184
    :cond_0
    new-instance v2, Lcom/twitter/model/media/EditableVideo;

    invoke-direct {v2, v0, v3, v1}, Lcom/twitter/model/media/EditableVideo;-><init>(Lcom/twitter/media/model/VideoFile;Landroid/net/Uri;Lcom/twitter/model/media/MediaSource;)V

    .line 186
    :try_start_2
    sget-object v0, Lcom/twitter/model/av/o;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/o;

    invoke-virtual {v2, v0}, Lcom/twitter/model/media/EditableVideo;->a(Lcom/twitter/model/av/o;)V
    :try_end_2
    .catch Lcom/twitter/util/serialization/OptionalFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 190
    :goto_3
    iput v5, v2, Lcom/twitter/model/media/EditableVideo;->b:I

    .line 191
    iput v6, v2, Lcom/twitter/model/media/EditableVideo;->c:I

    .line 192
    return-object v2

    .line 169
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_0

    .line 178
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_2

    .line 187
    :catch_2
    move-exception v0

    goto :goto_3

    :cond_1
    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/media/EditableVideo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lcom/twitter/media/model/VideoFile;->a:Lcom/twitter/util/serialization/ah;

    iget-object v1, p2, Lcom/twitter/model/media/EditableVideo;->k:Lcom/twitter/media/model/MediaFile;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p2}, Lcom/twitter/model/media/EditableVideo;->h()Lcom/twitter/model/media/MediaSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/media/MediaSource;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/media/EditableVideo;->b:I

    .line 147
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/media/EditableVideo;->c:I

    .line 148
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 149
    invoke-virtual {p2}, Lcom/twitter/model/media/EditableVideo;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 150
    invoke-virtual {p2}, Lcom/twitter/model/media/EditableVideo;->h()Lcom/twitter/model/media/MediaSource;

    move-result-object v1

    sget-object v2, Lcom/twitter/model/media/MediaSource;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 151
    invoke-virtual {p2}, Lcom/twitter/model/media/EditableVideo;->c()Lcom/twitter/model/av/o;

    move-result-object v1

    sget-object v2, Lcom/twitter/model/av/o;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 152
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    check-cast p2, Lcom/twitter/model/media/EditableVideo;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/media/k;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/media/EditableVideo;)V

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
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/media/k;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/media/EditableVideo;

    move-result-object v0

    return-object v0
.end method
