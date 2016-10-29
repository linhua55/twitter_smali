.class public Lcom/twitter/android/composer/ba;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/model/drafts/e;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/twitter/model/core/Tweet;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/twitter/model/drafts/e;

    invoke-direct {v0}, Lcom/twitter/model/drafts/e;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/twitter/android/composer/ax;J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 308
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/composer/ax;->m()Lcom/twitter/util/Tristate;

    move-result-object v1

    .line 312
    sget-object v2, Lcom/twitter/util/Tristate;->a:Lcom/twitter/util/Tristate;

    if-ne v1, v2, :cond_2

    .line 313
    invoke-static {}, Lcaq;->a()Lcaq;

    move-result-object v0

    invoke-virtual {v0}, Lcaq;->e()Z

    move-result v0

    goto :goto_0

    .line 315
    :cond_2
    sget-object v2, Lcom/twitter/util/Tristate;->c:Lcom/twitter/util/Tristate;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Landroid/net/Uri;)I
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 299
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 300
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    iget-object v0, v0, Lcom/twitter/model/drafts/DraftAttachment;->e:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 304
    :goto_1
    return v0

    .line 299
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private o()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->e()V

    .line 320
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 321
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/twitter/model/drafts/DraftAttachment;
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ba;->d(Landroid/net/Uri;)I

    move-result v0

    .line 201
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/model/drafts/DraftAttachment;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p1, Lcom/twitter/model/drafts/DraftAttachment;->e:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ba;->d(Landroid/net/Uri;)I

    move-result v0

    .line 191
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lcom/twitter/util/concurrent/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/client/Session;",
            ")",
            "Lcom/twitter/util/concurrent/j",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->c:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->c:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/util/concurrent/ObservablePromise;->a(Ljava/lang/Object;)Lcom/twitter/util/concurrent/ObservablePromise;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->h()J

    move-result-wide v0

    .line 150
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/twitter/util/concurrent/ObservablePromise;->a(Ljava/lang/Object;)Lcom/twitter/util/concurrent/ObservablePromise;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_1
    sget-object v2, Lcom/twitter/library/provider/dh;->c:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 155
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcho;->a:[Ljava/lang/String;

    .line 156
    invoke-static {v1, v0, v2}, Lazu;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Lcom/twitter/util/concurrent/j;

    move-result-object v1

    .line 160
    new-instance v0, Lcom/twitter/util/concurrent/ObservablePromise;

    invoke-direct {v0}, Lcom/twitter/util/concurrent/ObservablePromise;-><init>()V

    .line 161
    new-instance v2, Lcom/twitter/android/composer/bb;

    invoke-direct {v2, p0, v1}, Lcom/twitter/android/composer/bb;-><init>(Lcom/twitter/android/composer/ba;Lcom/twitter/util/concurrent/j;)V

    invoke-virtual {v0, v2}, Lcom/twitter/util/concurrent/ObservablePromise;->d(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 167
    new-instance v2, Lcom/twitter/util/concurrent/f;

    invoke-direct {v2}, Lcom/twitter/util/concurrent/f;-><init>()V

    sget-object v3, Lcom/twitter/util/concurrent/i;->a:Ljava/util/concurrent/Executor;

    .line 168
    invoke-virtual {v2, v3}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v2

    new-instance v3, Lcom/twitter/android/composer/bc;

    invoke-direct {v3, p0, v0}, Lcom/twitter/android/composer/bc;-><init>(Lcom/twitter/android/composer/ba;Lcom/twitter/util/concurrent/ObservablePromise;)V

    .line 169
    invoke-virtual {v2, v3}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v2

    .line 167
    invoke-interface {v1, v2}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 229
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 230
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    iget v0, v0, Lcom/twitter/model/drafts/DraftAttachment;->d:I

    if-ne v0, p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/twitter/model/drafts/DraftAttachment;->b(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/util/concurrent/j;

    .line 232
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 229
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 235
    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/model/drafts/e;->a(J)Lcom/twitter/model/drafts/e;

    .line 112
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/twitter/android/composer/ax;)V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/android/composer/ba;->o()V

    .line 55
    invoke-virtual {p2}, Lcom/twitter/android/composer/ax;->k()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p2}, Lcom/twitter/android/composer/ax;->j()J

    move-result-wide v0

    .line 58
    iget-object v2, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    .line 59
    invoke-virtual {v2, v0, v1}, Lcom/twitter/model/drafts/e;->b(J)Lcom/twitter/model/drafts/e;

    move-result-object v2

    .line 60
    invoke-virtual {p2}, Lcom/twitter/android/composer/ax;->g()Lcss;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/model/drafts/e;->a(Lcss;)Lcom/twitter/model/drafts/e;

    move-result-object v2

    .line 61
    invoke-static {p2, v0, v1}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/android/composer/ax;J)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/twitter/model/drafts/e;->a(Z)Lcom/twitter/model/drafts/e;

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    .line 68
    invoke-virtual {p2}, Lcom/twitter/android/composer/ax;->o()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/drafts/e;->a(J)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 69
    invoke-virtual {p2, p1}, Lcom/twitter/android/composer/ax;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Ljava/lang/String;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 70
    invoke-virtual {p2}, Lcom/twitter/android/composer/ax;->h()Lcom/twitter/model/geo/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Lcom/twitter/model/geo/g;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 71
    invoke-virtual {p2}, Lcom/twitter/android/composer/ax;->l()Lcom/twitter/model/timeline/cx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Lcom/twitter/model/timeline/cx;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 72
    invoke-virtual {p2}, Lcom/twitter/android/composer/ax;->n()Lcom/twitter/model/core/ay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 73
    invoke-virtual {p2}, Lcom/twitter/android/composer/ax;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->b(Ljava/lang/String;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 74
    invoke-virtual {p2}, Lcom/twitter/android/composer/ax;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->c(Ljava/lang/String;)Lcom/twitter/model/drafts/e;

    .line 75
    invoke-virtual {p2}, Lcom/twitter/android/composer/ax;->p()Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    :cond_0
    invoke-virtual {p2}, Lcom/twitter/android/composer/ax;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ba;->a(Z)V

    .line 80
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/model/core/Tweet;)V

    .line 64
    iget-object v1, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    iget-wide v2, v0, Lcom/twitter/model/core/Tweet;->p:J

    .line 65
    invoke-static {p2, v2, v3}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/android/composer/ax;J)Z

    move-result v0

    .line 64
    invoke-virtual {v1, v0}, Lcom/twitter/model/drafts/e;->a(Z)Lcom/twitter/model/drafts/e;

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/twitter/android/composer/ba;->o()V

    .line 84
    const-string/jumbo v0, "draft_tweet"

    sget-object v1, Lcom/twitter/model/drafts/d;->a:Lcom/twitter/util/serialization/d;

    .line 85
    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/d;

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/model/drafts/d;)V

    .line 86
    const-string/jumbo v0, "replied_tweet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/model/core/Tweet;)V

    .line 87
    return-void
.end method

.method public a(Lclp;)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0, p1}, Lcom/twitter/model/drafts/e;->a(Lclp;)Lcom/twitter/model/drafts/e;

    .line 269
    return-void
.end method

.method a(Lcom/twitter/model/core/Tweet;)V
    .locals 4

    .prologue
    .line 286
    iput-object p1, p0, Lcom/twitter/android/composer/ba;->c:Lcom/twitter/model/core/Tweet;

    .line 287
    if-nez p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/drafts/e;->b(J)Lcom/twitter/model/drafts/e;

    .line 289
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Lcss;)Lcom/twitter/model/drafts/e;

    .line 295
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-static {}, Lcaq;->a()Lcaq;

    move-result-object v1

    .line 292
    invoke-virtual {v1, p1}, Lcaq;->a(Lcom/twitter/model/core/Tweet;)J

    move-result-wide v2

    .line 291
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/drafts/e;->b(J)Lcom/twitter/model/drafts/e;

    .line 293
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Lcss;)Lcom/twitter/model/drafts/e;

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/drafts/d;)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/twitter/android/composer/ba;->o()V

    .line 91
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0, p1}, Lcom/twitter/model/drafts/e;->a(Lcom/twitter/model/drafts/d;)Lcom/twitter/model/drafts/e;

    .line 92
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Ljava/util/List;)Lcom/twitter/model/drafts/e;

    .line 93
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    return-void
.end method

.method public a(Lcom/twitter/model/geo/g;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0, p1}, Lcom/twitter/model/drafts/e;->a(Lcom/twitter/model/geo/g;)Lcom/twitter/model/drafts/e;

    .line 265
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0, p1}, Lcom/twitter/model/drafts/e;->a(Ljava/lang/String;)Lcom/twitter/model/drafts/e;

    .line 121
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/twitter/android/composer/ba;->d:Z

    .line 129
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->i()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/twitter/media/model/MediaType;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 242
    iget-object v2, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 243
    sget-object v3, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/twitter/media/model/MediaType;->a:Lcom/twitter/media/model/MediaType;

    if-ne p1, v3, :cond_3

    .line 244
    :cond_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 246
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 244
    goto :goto_0

    .line 246
    :cond_3
    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public b(Landroid/net/Uri;)Lcom/twitter/model/drafts/DraftAttachment;
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ba;->d(Landroid/net/Uri;)I

    move-result v0

    .line 216
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    goto :goto_0
.end method

.method public b()Lcom/twitter/model/drafts/d;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    iget-object v1, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Ljava/util/List;)Lcom/twitter/model/drafts/e;

    .line 103
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/d;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 281
    const-string/jumbo v0, "draft_tweet"

    invoke-virtual {p0}, Lcom/twitter/android/composer/ba;->b()Lcom/twitter/model/drafts/d;

    move-result-object v1

    sget-object v2, Lcom/twitter/model/drafts/d;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 282
    const-string/jumbo v0, "replied_tweet"

    iget-object v1, p0, Lcom/twitter/android/composer/ba;->c:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 283
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0, p1}, Lcom/twitter/model/drafts/e;->b(Ljava/lang/String;)Lcom/twitter/model/drafts/e;

    .line 261
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ba;->d(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/twitter/android/composer/ba;->d:Z

    return v0
.end method

.method public f()Z
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->c:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    return-object v0
.end method

.method public j()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 221
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 222
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/twitter/model/drafts/DraftAttachment;->b(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/util/concurrent/j;

    .line 221
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/twitter/media/model/MediaType;->a:Lcom/twitter/media/model/MediaType;

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/media/model/MediaType;)Z

    move-result v0

    return v0
.end method

.method public l()Lcom/twitter/model/core/ay;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->k()Lcom/twitter/model/core/ay;

    move-result-object v0

    return-object v0
.end method

.method public m()Lclp;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->j()Lclp;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/twitter/android/composer/ba;->a:Lcom/twitter/model/drafts/e;

    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->j()Lclp;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
