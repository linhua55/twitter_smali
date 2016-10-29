.class public Lcom/twitter/library/api/dm/requests/w;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/api/dm/requests/s;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/twitter/library/client/Session;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/twitter/model/core/ay;

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/twitter/model/drafts/DraftAttachment;

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/api/dm/requests/w;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/w;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/library/api/dm/requests/w;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/w;->b:Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/library/api/dm/requests/w;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/library/api/dm/requests/w;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/w;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/library/api/dm/requests/w;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/library/api/dm/requests/w;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/w;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/library/api/dm/requests/w;)Lcom/twitter/model/drafts/DraftAttachment;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/w;->h:Lcom/twitter/model/drafts/DraftAttachment;

    return-object v0
.end method

.method static synthetic h(Lcom/twitter/library/api/dm/requests/w;)Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/twitter/library/api/dm/requests/w;->i:Z

    return v0
.end method

.method static synthetic i(Lcom/twitter/library/api/dm/requests/w;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/w;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/twitter/library/api/dm/requests/w;)Lcom/twitter/model/core/ay;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/w;->f:Lcom/twitter/model/core/ay;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/twitter/library/api/dm/requests/w;
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/w;->a:Landroid/content/Context;

    .line 275
    return-object p0
.end method

.method public a(Lcom/twitter/library/client/Session;)Lcom/twitter/library/api/dm/requests/w;
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/w;->b:Lcom/twitter/library/client/Session;

    .line 287
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/ay;)Lcom/twitter/library/api/dm/requests/w;
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/w;->f:Lcom/twitter/model/core/ay;

    .line 311
    return-object p0
.end method

.method public a(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/library/api/dm/requests/w;
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/w;->h:Lcom/twitter/model/drafts/DraftAttachment;

    .line 323
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/w;->j:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public a(Ljava/util/Set;)Lcom/twitter/library/api/dm/requests/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/twitter/library/api/dm/requests/w;"
        }
    .end annotation

    .prologue
    .line 316
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/w;->g:Ljava/util/Set;

    .line 317
    return-object p0
.end method

.method public a(Z)Lcom/twitter/library/api/dm/requests/w;
    .locals 0

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/twitter/library/api/dm/requests/w;->i:Z

    .line 329
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/w;->c:Ljava/lang/String;

    .line 293
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/twitter/util/object/h;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/w;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/w;->b:Lcom/twitter/library/client/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/w;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/w;->d:Ljava/lang/String;

    .line 299
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/w;->e()Lcom/twitter/library/api/dm/requests/s;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/w;->e:Ljava/lang/String;

    .line 305
    return-object p0
.end method

.method protected e()Lcom/twitter/library/api/dm/requests/s;
    .locals 2

    .prologue
    .line 340
    new-instance v0, Lcom/twitter/library/api/dm/requests/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/api/dm/requests/s;-><init>(Lcom/twitter/library/api/dm/requests/w;Lcom/twitter/library/api/dm/requests/t;)V

    return-object v0
.end method
