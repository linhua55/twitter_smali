.class public final Lafm;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/app/common/app/n;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lafg;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lafm;-><init>()V

    return-void
.end method

.method static synthetic a(Lafm;)Lcom/twitter/app/common/app/n;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lafm;->a:Lcom/twitter/app/common/app/n;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/app/n;)Lafm;
    .locals 1

    .prologue
    .line 366
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/app/n;

    iput-object v0, p0, Lafm;->a:Lcom/twitter/app/common/app/n;

    .line 367
    return-object p0
.end method

.method public a()Lafq;
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lafm;->a:Lcom/twitter/app/common/app/n;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/twitter/app/common/app/n;

    .line 341
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

    .line 343
    :cond_0
    new-instance v0, Laff;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laff;-><init>(Lafm;Lafg;)V

    return-object v0
.end method
