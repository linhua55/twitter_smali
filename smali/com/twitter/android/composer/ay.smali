.class public Lcom/twitter/android/composer/ay;
.super Lcom/twitter/android/am;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/am",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/twitter/model/drafts/DraftAttachment;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ltr;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/twitter/android/am;-><init>(Ltr;)V

    .line 29
    return-void
.end method

.method private static b(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/twitter/android/av/ay;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/twitter/android/composer/ay;->c(Ljava/util/List;)Lcom/twitter/model/media/n;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/util/List;)Lcom/twitter/model/media/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;)",
            "Lcom/twitter/model/media/n;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-static {p0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 102
    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-object v1

    .line 106
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 107
    instance-of v2, v0, Lcom/twitter/model/media/n;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/twitter/model/media/n;

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/twitter/model/av/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;)",
            "Lcom/twitter/model/av/o;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/twitter/android/composer/ay;->a()Lcom/twitter/model/av/o;

    move-result-object v1

    .line 77
    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    invoke-static {p1}, Lcom/twitter/android/composer/ay;->c(Ljava/util/List;)Lcom/twitter/model/media/n;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_0

    .line 87
    invoke-interface {v2}, Lcom/twitter/model/media/n;->c()Lcom/twitter/model/av/o;

    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/client/Session;Ljava/util/List;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/client/Session;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;)",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/av/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p2}, Lcom/twitter/android/composer/ay;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/ay;->a:Ltr;

    .line 36
    invoke-virtual {v0, p1}, Ltr;->a(Lcom/twitter/library/client/Session;)Lrx/o;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Lcom/twitter/model/av/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;",
            "Lcom/twitter/model/av/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/twitter/android/composer/ay;->a()Lcom/twitter/model/av/o;

    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {p1}, Lcom/twitter/android/composer/ay;->c(Ljava/util/List;)Lcom/twitter/model/media/n;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p2}, Lcom/twitter/model/media/n;->a(Lcom/twitter/model/av/o;)V

    goto :goto_0
.end method

.method protected synthetic b(Lcom/twitter/library/client/Session;Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 23
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/composer/ay;->a(Lcom/twitter/library/client/Session;Ljava/util/List;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
