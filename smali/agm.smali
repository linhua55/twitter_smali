.class public final Lagm;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Lafu;

.field private b:Lcom/twitter/app/common/app/n;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lagf;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lagm;-><init>()V

    return-void
.end method

.method static synthetic a(Lagm;)Lcom/twitter/app/common/app/n;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lagm;->b:Lcom/twitter/app/common/app/n;

    return-object v0
.end method

.method static synthetic b(Lagm;)Lafu;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lagm;->a:Lafu;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/app/n;)Lagm;
    .locals 1

    .prologue
    .line 468
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/app/n;

    iput-object v0, p0, Lagm;->b:Lcom/twitter/app/common/app/n;

    .line 469
    return-object p0
.end method

.method public a()Lagw;
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lagm;->a:Lafu;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Lafu;

    invoke-direct {v0}, Lafu;-><init>()V

    iput-object v0, p0, Lagm;->a:Lafu;

    .line 434
    :cond_0
    iget-object v0, p0, Lagm;->b:Lcom/twitter/app/common/app/n;

    if-nez v0, :cond_1

    .line 435
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/twitter/app/common/app/n;

    .line 436
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

    .line 438
    :cond_1
    new-instance v0, Lage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lage;-><init>(Lagm;Lagf;)V

    return-object v0
.end method
