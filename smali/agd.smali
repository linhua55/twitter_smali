.class public final Lagd;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Laha;

.field private b:Lcom/twitter/app/common/app/n;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lafx;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lagd;-><init>()V

    return-void
.end method

.method static synthetic a(Lagd;)Lcom/twitter/app/common/app/n;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lagd;->b:Lcom/twitter/app/common/app/n;

    return-object v0
.end method

.method static synthetic b(Lagd;)Laha;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lagd;->a:Laha;

    return-object v0
.end method


# virtual methods
.method public a(Laha;)Lagd;
    .locals 1

    .prologue
    .line 410
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laha;

    iput-object v0, p0, Lagd;->a:Laha;

    .line 411
    return-object p0
.end method

.method public a(Lcom/twitter/app/common/app/n;)Lagd;
    .locals 1

    .prologue
    .line 415
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/app/n;

    iput-object v0, p0, Lagd;->b:Lcom/twitter/app/common/app/n;

    .line 416
    return-object p0
.end method

.method public a()Lagv;
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lagd;->a:Laha;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Laha;

    .line 381
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    iget-object v0, p0, Lagd;->b:Lcom/twitter/app/common/app/n;

    if-nez v0, :cond_1

    .line 384
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/twitter/app/common/app/n;

    .line 385
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_1
    new-instance v0, Lafw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lafw;-><init>(Lagd;Lafx;)V

    return-object v0
.end method
