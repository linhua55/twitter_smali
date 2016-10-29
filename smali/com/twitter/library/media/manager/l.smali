.class public Lcom/twitter/library/media/manager/l;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# static fields
.field private static final a:Landroid/os/HandlerThread;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/twitter/library/media/manager/l;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/twitter/util/collection/ReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/ReferenceMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/media/manager/i;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ldbd;

.field private final g:Lcom/twitter/library/media/manager/i;

.field private final h:Lcom/twitter/library/media/manager/i;

.field private final i:Lcom/twitter/library/media/manager/al;

.field private final j:Lcom/twitter/library/media/manager/i;

.field private final k:Lcom/twitter/library/media/manager/i;

.field private final l:Lcom/twitter/library/media/manager/i;

.field private final m:Lcom/twitter/library/media/manager/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/twitter/library/media/manager/l;->b:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CoordinationThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/library/media/manager/l;->a:Landroid/os/HandlerThread;

    .line 109
    sget-object v0, Lcom/twitter/library/media/manager/l;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Lcom/twitter/util/collection/ReferenceMap;->a()Lcom/twitter/util/collection/ReferenceMap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    .line 136
    iput-object p1, p0, Lcom/twitter/library/media/manager/l;->d:Landroid/content/Context;

    .line 138
    invoke-static {p1}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;)Lcom/twitter/util/math/Size;

    move-result-object v0

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/twitter/util/math/Size;->a(F)Lcom/twitter/util/math/Size;

    move-result-object v10

    .line 140
    invoke-static {p1}, Lcom/twitter/util/c;->a(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/high16 v1, 0x200000

    const/high16 v2, 0x1000000

    invoke-static {v0, v1, v2}, Lcom/twitter/util/math/b;->a(III)I

    move-result v11

    .line 142
    new-instance v6, Lcom/twitter/util/collection/j;

    const/4 v0, 0x0

    sget-object v1, Lcom/twitter/media/util/a;->b:Lcom/twitter/util/collection/n;

    invoke-direct {v6, v0, v1}, Lcom/twitter/util/collection/j;-><init>(ILcom/twitter/util/collection/n;)V

    .line 144
    new-instance v0, Ldbd;

    const-string/jumbo v2, "photos"

    const/4 v3, 0x2

    const/high16 v4, 0x1900000

    const/high16 v5, 0x500000

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ldbd;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/twitter/library/media/manager/l;->f:Ldbd;

    .line 146
    new-instance v0, Lcom/twitter/library/media/manager/i;

    const-string/jumbo v1, "photo"

    sget-object v3, Lcom/twitter/library/media/manager/l;->a:Landroid/os/HandlerThread;

    iget-object v7, p0, Lcom/twitter/library/media/manager/l;->f:Ldbd;

    const/4 v8, 0x0

    move-object v2, p1

    move-object v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v8}, Lcom/twitter/library/media/manager/i;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/HandlerThread;Lcom/twitter/util/math/Size;ILcom/twitter/util/collection/j;Ldbd;Ldbd;)V

    iput-object v0, p0, Lcom/twitter/library/media/manager/l;->g:Lcom/twitter/library/media/manager/i;

    .line 148
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    const-string/jumbo v1, "photo"

    iget-object v2, p0, Lcom/twitter/library/media/manager/l;->g:Lcom/twitter/library/media/manager/i;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/ReferenceMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v7, Lcom/twitter/util/collection/j;

    const/high16 v0, 0x200000

    sget-object v1, Lcom/twitter/media/util/a;->b:Lcom/twitter/util/collection/n;

    invoke-direct {v7, v0, v1}, Lcom/twitter/util/collection/j;-><init>(ILcom/twitter/util/collection/n;)V

    .line 152
    new-instance v0, Ldbd;

    iget-object v1, p0, Lcom/twitter/library/media/manager/l;->d:Landroid/content/Context;

    const-string/jumbo v2, "users"

    const/4 v3, 0x1

    const/high16 v4, 0xa00000

    const/high16 v5, 0x200000

    invoke-direct/range {v0 .. v5}, Ldbd;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    .line 155
    new-instance v1, Lcom/twitter/library/media/manager/i;

    const-string/jumbo v2, "user"

    sget-object v4, Lcom/twitter/library/media/manager/l;->a:Landroid/os/HandlerThread;

    sget-object v5, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/twitter/library/media/manager/l;->f:Ldbd;

    move-object v3, p1

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/twitter/library/media/manager/i;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/HandlerThread;Lcom/twitter/util/math/Size;ILcom/twitter/util/collection/j;Ldbd;Ldbd;)V

    iput-object v1, p0, Lcom/twitter/library/media/manager/l;->h:Lcom/twitter/library/media/manager/i;

    .line 157
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    const-string/jumbo v1, "user"

    iget-object v2, p0, Lcom/twitter/library/media/manager/l;->h:Lcom/twitter/library/media/manager/i;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/ReferenceMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v6, Lcom/twitter/util/collection/j;

    const/4 v0, 0x0

    sget-object v1, Lcom/twitter/media/model/MediaFile;->c:Lcom/twitter/util/collection/n;

    invoke-direct {v6, v0, v1}, Lcom/twitter/util/collection/j;-><init>(ILcom/twitter/util/collection/n;)V

    .line 161
    new-instance v0, Ldbd;

    const-string/jumbo v2, "videos"

    const/4 v3, 0x1

    const/high16 v4, 0x6400000

    const/high16 v5, 0x3200000

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ldbd;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    .line 164
    new-instance v1, Lcom/twitter/library/media/manager/al;

    const-string/jumbo v2, "video"

    sget-object v4, Lcom/twitter/library/media/manager/l;->a:Landroid/os/HandlerThread;

    move-object v3, p1

    move-object v5, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/media/manager/al;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/HandlerThread;Lcom/twitter/util/collection/q;Ldbd;)V

    iput-object v1, p0, Lcom/twitter/library/media/manager/l;->i:Lcom/twitter/library/media/manager/al;

    .line 166
    new-instance v7, Lcom/twitter/util/collection/j;

    const v0, 0x64000

    sget-object v1, Lcom/twitter/media/util/a;->b:Lcom/twitter/util/collection/n;

    invoke-direct {v7, v0, v1}, Lcom/twitter/util/collection/j;-><init>(ILcom/twitter/util/collection/n;)V

    .line 168
    new-instance v0, Ldbd;

    const-string/jumbo v2, "hashflags"

    const/4 v3, 0x1

    const/high16 v4, 0x200000

    const/high16 v5, 0x200000

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ldbd;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    .line 171
    new-instance v1, Lcom/twitter/library/media/manager/i;

    const-string/jumbo v2, "hashflags"

    sget-object v4, Lcom/twitter/library/media/manager/l;->a:Landroid/os/HandlerThread;

    sget-object v5, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/twitter/library/media/manager/i;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/HandlerThread;Lcom/twitter/util/math/Size;ILcom/twitter/util/collection/j;Ldbd;Ldbd;)V

    iput-object v1, p0, Lcom/twitter/library/media/manager/l;->j:Lcom/twitter/library/media/manager/i;

    .line 173
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    const-string/jumbo v1, "hashflags"

    iget-object v2, p0, Lcom/twitter/library/media/manager/l;->j:Lcom/twitter/library/media/manager/i;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/ReferenceMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v7, Lcom/twitter/util/collection/j;

    const/high16 v0, 0x300000

    sget-object v1, Lcom/twitter/media/util/a;->b:Lcom/twitter/util/collection/n;

    invoke-direct {v7, v0, v1}, Lcom/twitter/util/collection/j;-><init>(ILcom/twitter/util/collection/n;)V

    .line 177
    new-instance v0, Ldbd;

    const-string/jumbo v2, "gallery"

    const/4 v3, 0x1

    const/high16 v4, 0x500000

    const/high16 v5, 0x300000

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ldbd;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    .line 180
    new-instance v1, Lcom/twitter/library/media/manager/i;

    const-string/jumbo v2, "gallery"

    sget-object v4, Lcom/twitter/library/media/manager/l;->a:Landroid/os/HandlerThread;

    iget-object v8, p0, Lcom/twitter/library/media/manager/l;->f:Ldbd;

    move-object v3, p1

    move-object v5, v10

    move v6, v11

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/twitter/library/media/manager/i;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/HandlerThread;Lcom/twitter/util/math/Size;ILcom/twitter/util/collection/j;Ldbd;Ldbd;)V

    iput-object v1, p0, Lcom/twitter/library/media/manager/l;->k:Lcom/twitter/library/media/manager/i;

    .line 182
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    const-string/jumbo v1, "gallery"

    iget-object v2, p0, Lcom/twitter/library/media/manager/l;->k:Lcom/twitter/library/media/manager/i;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/ReferenceMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Ldbd;

    const-string/jumbo v2, "gif_disk"

    const/4 v3, 0x0

    const/high16 v4, 0x1400000

    const/high16 v5, 0xa00000

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ldbd;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    .line 186
    new-instance v5, Lcom/twitter/util/collection/j;

    const/4 v1, 0x0

    new-instance v2, Lcom/twitter/library/media/manager/m;

    invoke-direct {v2, p0}, Lcom/twitter/library/media/manager/m;-><init>(Lcom/twitter/library/media/manager/l;)V

    invoke-direct {v5, v1, v2}, Lcom/twitter/util/collection/j;-><init>(ILcom/twitter/util/collection/n;)V

    .line 194
    new-instance v1, Lcom/twitter/library/media/manager/a;

    const-string/jumbo v2, "gif"

    sget-object v4, Lcom/twitter/library/media/manager/l;->a:Landroid/os/HandlerThread;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/twitter/library/media/manager/a;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/HandlerThread;Lcom/twitter/util/collection/q;Ldbd;Ldbd;)V

    iput-object v1, p0, Lcom/twitter/library/media/manager/l;->m:Lcom/twitter/library/media/manager/a;

    .line 197
    new-instance v0, Ldbd;

    const-string/jumbo v2, "stickers_disk"

    const/4 v3, 0x0

    const/high16 v4, 0xa00000

    const/high16 v5, 0x500000

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ldbd;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    .line 199
    new-instance v7, Lcom/twitter/util/collection/j;

    const/4 v1, 0x0

    sget-object v2, Lcom/twitter/media/util/a;->b:Lcom/twitter/util/collection/n;

    invoke-direct {v7, v1, v2}, Lcom/twitter/util/collection/j;-><init>(ILcom/twitter/util/collection/n;)V

    .line 201
    new-instance v1, Lcom/twitter/library/media/manager/i;

    const-string/jumbo v2, "stickers"

    sget-object v4, Lcom/twitter/library/media/manager/l;->a:Landroid/os/HandlerThread;

    const/4 v9, 0x0

    move-object v3, p1

    move-object v5, v10

    move v6, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/twitter/library/media/manager/i;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/HandlerThread;Lcom/twitter/util/math/Size;ILcom/twitter/util/collection/j;Ldbd;Ldbd;)V

    iput-object v1, p0, Lcom/twitter/library/media/manager/l;->l:Lcom/twitter/library/media/manager/i;

    .line 204
    invoke-direct {p0}, Lcom/twitter/library/media/manager/l;->j()V

    .line 205
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/media/manager/l;)Lcom/twitter/library/media/manager/i;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->h:Lcom/twitter/library/media/manager/i;

    return-object v0
.end method

.method public static a()Lcom/twitter/library/media/manager/l;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/twitter/library/media/manager/l;->c:Lcom/twitter/library/media/manager/l;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;
    .locals 3

    .prologue
    .line 119
    sget-object v0, Lcom/twitter/library/media/manager/l;->c:Lcom/twitter/library/media/manager/l;

    if-nez v0, :cond_1

    .line 120
    sget-object v1, Lcom/twitter/library/media/manager/l;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    sget-object v0, Lcom/twitter/library/media/manager/l;->c:Lcom/twitter/library/media/manager/l;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/twitter/library/media/manager/l;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/library/media/manager/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/library/media/manager/l;->c:Lcom/twitter/library/media/manager/l;

    .line 124
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_1
    sget-object v0, Lcom/twitter/library/media/manager/l;->c:Lcom/twitter/library/media/manager/l;

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 375
    sget v1, Lbju;->mini_user_image_size:I

    .line 376
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lbju;->medium_user_image_size:I

    .line 377
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lbju;->user_image_size:I

    .line 378
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 375
    invoke-static {v1, v2, v0}, Lcom/twitter/library/media/manager/UserImageRequest;->a(III)V

    .line 379
    return-void
.end method

.method private k()Lcom/twitter/library/media/manager/i;
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 384
    sget v1, Lbju;->media_thumbnail_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 385
    const-string/jumbo v1, "thumbnail"

    .line 387
    invoke-static {v0}, Lcom/twitter/util/math/Size;->a(I)Lcom/twitter/util/math/Size;

    move-result-object v0

    const/high16 v2, 0x100000

    const/high16 v3, 0x200000

    .line 385
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/twitter/library/media/manager/l;->a(Ljava/lang/String;Lcom/twitter/util/math/Size;II)Lcom/twitter/library/media/manager/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/library/media/manager/i;
    .locals 2

    .prologue
    .line 309
    if-eqz p1, :cond_0

    const-string/jumbo v0, "photo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->g:Lcom/twitter/library/media/manager/i;

    .line 323
    :goto_0
    return-object v0

    .line 311
    :cond_1
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->h:Lcom/twitter/library/media/manager/i;

    goto :goto_0

    .line 313
    :cond_2
    const-string/jumbo v0, "thumbnail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    iget-object v1, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    invoke-virtual {v0, p1}, Lcom/twitter/util/collection/ReferenceMap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/i;

    .line 316
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/twitter/library/media/manager/l;->k()Lcom/twitter/library/media/manager/i;

    move-result-object v0

    :cond_3
    monitor-exit v1

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 318
    :cond_4
    const-string/jumbo v0, "stickers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 319
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->l:Lcom/twitter/library/media/manager/i;

    goto :goto_0

    .line 321
    :cond_5
    iget-object v1, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    monitor-enter v1

    .line 322
    :try_start_1
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    invoke-virtual {v0, p1}, Lcom/twitter/util/collection/ReferenceMap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/i;

    .line 323
    if-eqz v0, :cond_6

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 324
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 323
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->g:Lcom/twitter/library/media/manager/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/twitter/util/math/Size;II)Lcom/twitter/library/media/manager/i;
    .locals 10

    .prologue
    .line 336
    iget-object v9, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    monitor-enter v9

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    invoke-virtual {v0, p1}, Lcom/twitter/util/collection/ReferenceMap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/i;

    .line 338
    if-nez v0, :cond_0

    .line 339
    if-ltz p4, :cond_1

    .line 340
    new-instance v6, Lcom/twitter/util/collection/j;

    sget-object v0, Lcom/twitter/media/util/a;->b:Lcom/twitter/util/collection/n;

    invoke-direct {v6, p4, v0}, Lcom/twitter/util/collection/j;-><init>(ILcom/twitter/util/collection/n;)V

    .line 342
    new-instance v0, Lcom/twitter/library/media/manager/i;

    iget-object v2, p0, Lcom/twitter/library/media/manager/l;->d:Landroid/content/Context;

    sget-object v3, Lcom/twitter/library/media/manager/l;->a:Landroid/os/HandlerThread;

    iget-object v7, p0, Lcom/twitter/library/media/manager/l;->f:Ldbd;

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/twitter/library/media/manager/i;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/HandlerThread;Lcom/twitter/util/math/Size;ILcom/twitter/util/collection/j;Ldbd;Ldbd;)V

    .line 344
    iget-object v1, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    invoke-virtual {v1, p1, v0}, Lcom/twitter/util/collection/ReferenceMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_0
    :goto_0
    monitor-exit v9

    return-object v0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->g:Lcom/twitter/library/media/manager/i;

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/twitter/media/request/a;)Lcom/twitter/util/concurrent/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/request/a;",
            ")",
            "Lcom/twitter/util/concurrent/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lcom/twitter/util/concurrent/c;

    invoke-direct {v0}, Lcom/twitter/util/concurrent/c;-><init>()V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 254
    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/c;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/c;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/media/manager/n;

    invoke-direct {v1, p0, p1}, Lcom/twitter/library/media/manager/n;-><init>(Lcom/twitter/library/media/manager/l;Lcom/twitter/media/request/a;)V

    .line 255
    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/c;->a(Ljava/util/concurrent/Callable;)Lcom/twitter/util/concurrent/c;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/twitter/util/concurrent/c;->a()Lcom/twitter/util/concurrent/j;

    move-result-object v0

    .line 253
    return-object v0
.end method

.method public a(Lcom/twitter/media/request/b;)Lcom/twitter/util/concurrent/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/request/b;",
            ")",
            "Lcom/twitter/util/concurrent/j",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/twitter/media/request/b;->a()Lcom/twitter/media/request/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/media/manager/l;->b(Lcom/twitter/media/request/a;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/twitter/media/request/b;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/twitter/media/request/b;->a()Lcom/twitter/media/request/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/media/manager/l;->c(Lcom/twitter/media/request/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/twitter/library/media/manager/i;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->g:Lcom/twitter/library/media/manager/i;

    return-object v0
.end method

.method public b(Lcom/twitter/media/request/a;)Lcom/twitter/util/concurrent/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/request/a;",
            ")",
            "Lcom/twitter/util/concurrent/j",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/media/manager/l;->a(Ljava/lang/String;)Lcom/twitter/library/media/manager/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/manager/i;->a(Lcom/twitter/media/request/a;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/twitter/media/request/a;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/media/manager/l;->a(Ljava/lang/String;)Lcom/twitter/library/media/manager/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/manager/i;->e(Lcom/twitter/media/request/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Lcom/twitter/library/media/manager/i;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->h:Lcom/twitter/library/media/manager/i;

    return-object v0
.end method

.method public c(Lcom/twitter/media/request/b;)V
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/twitter/media/request/b;->a()Lcom/twitter/media/request/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/media/manager/l;->d(Lcom/twitter/media/request/a;)V

    .line 288
    return-void
.end method

.method public d()Lcom/twitter/library/media/manager/i;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->j:Lcom/twitter/library/media/manager/i;

    return-object v0
.end method

.method public d(Lcom/twitter/media/request/b;)Ljava/io/File;
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/twitter/media/request/b;->a()Lcom/twitter/media/request/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/media/manager/l;->e(Lcom/twitter/media/request/a;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/twitter/media/request/a;)V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/media/manager/l;->a(Ljava/lang/String;)Lcom/twitter/library/media/manager/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/manager/i;->a(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public e()Lcom/twitter/library/media/manager/al;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->i:Lcom/twitter/library/media/manager/al;

    return-object v0
.end method

.method public e(Lcom/twitter/media/request/a;)Ljava/io/File;
    .locals 1

    .prologue
    .line 297
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 298
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/media/manager/l;->a(Ljava/lang/String;)Lcom/twitter/library/media/manager/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/manager/i;->c(Lcom/twitter/media/request/a;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/twitter/library/media/manager/i;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->k:Lcom/twitter/library/media/manager/i;

    return-object v0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->i:Lcom/twitter/library/media/manager/al;

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/al;->a()Lcom/twitter/util/collection/q;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Lcom/twitter/util/collection/q;->a()V

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    invoke-virtual {v0}, Lcom/twitter/util/collection/ReferenceMap;->h()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/i;

    .line 239
    invoke-virtual {v0}, Lcom/twitter/library/media/manager/i;->a()Lcom/twitter/util/collection/q;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v0}, Lcom/twitter/util/collection/q;->a()V

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    return-void
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/media/manager/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->e:Lcom/twitter/util/collection/ReferenceMap;

    invoke-virtual {v0}, Lcom/twitter/util/collection/ReferenceMap;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/twitter/library/media/manager/a;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/twitter/library/media/manager/l;->m:Lcom/twitter/library/media/manager/a;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/twitter/library/media/manager/l;->j()V

    .line 366
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/l;->g()V

    .line 371
    return-void
.end method
