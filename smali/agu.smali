.class public final Lagu;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Lagy;

.field private b:Lcom/twitter/app/common/app/n;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lago;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lagu;-><init>()V

    return-void
.end method

.method static synthetic a(Lagu;)Lcom/twitter/app/common/app/n;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lagu;->b:Lcom/twitter/app/common/app/n;

    return-object v0
.end method

.method static synthetic b(Lagu;)Lagy;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lagu;->a:Lagy;

    return-object v0
.end method


# virtual methods
.method public a(Lagy;)Lagu;
    .locals 1

    .prologue
    .line 324
    .line 325
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagy;

    iput-object v0, p0, Lagu;->a:Lagy;

    .line 326
    return-object p0
.end method

.method public a(Lcom/twitter/app/common/app/n;)Lagu;
    .locals 1

    .prologue
    .line 330
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/app/n;

    iput-object v0, p0, Lagu;->b:Lcom/twitter/app/common/app/n;

    .line 331
    return-object p0
.end method

.method public a()Lagx;
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lagu;->a:Lagy;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lagy;

    invoke-direct {v0}, Lagy;-><init>()V

    iput-object v0, p0, Lagu;->a:Lagy;

    .line 295
    :cond_0
    iget-object v0, p0, Lagu;->b:Lcom/twitter/app/common/app/n;

    if-nez v0, :cond_1

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/twitter/app/common/app/n;

    .line 297
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

    .line 299
    :cond_1
    new-instance v0, Lagn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lagn;-><init>(Lagu;Lago;)V

    return-object v0
.end method
