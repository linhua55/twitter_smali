.class public final Lcom/twitter/android/smartfollow/i;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/android/smartfollow/t;

.field private b:Lcom/twitter/app/common/app/n;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/smartfollow/d;)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/twitter/android/smartfollow/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/smartfollow/i;)Lcom/twitter/app/common/app/n;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/twitter/android/smartfollow/i;->b:Lcom/twitter/app/common/app/n;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/smartfollow/i;)Lcom/twitter/android/smartfollow/t;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/twitter/android/smartfollow/i;->a:Lcom/twitter/android/smartfollow/t;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/smartfollow/ab;
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/twitter/android/smartfollow/i;->a:Lcom/twitter/android/smartfollow/t;

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/twitter/android/smartfollow/t;

    .line 473
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

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/smartfollow/i;->b:Lcom/twitter/app/common/app/n;

    if-nez v0, :cond_1

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/twitter/app/common/app/n;

    .line 477
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

    .line 479
    :cond_1
    new-instance v0, Lcom/twitter/android/smartfollow/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/smartfollow/c;-><init>(Lcom/twitter/android/smartfollow/i;Lcom/twitter/android/smartfollow/d;)V

    return-object v0
.end method

.method public a(Lcom/twitter/android/people/q;)Lcom/twitter/android/smartfollow/i;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 495
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    return-object p0
.end method

.method public a(Lcom/twitter/android/smartfollow/t;)Lcom/twitter/android/smartfollow/i;
    .locals 1

    .prologue
    .line 484
    .line 485
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/t;

    iput-object v0, p0, Lcom/twitter/android/smartfollow/i;->a:Lcom/twitter/android/smartfollow/t;

    .line 486
    return-object p0
.end method

.method public a(Lcom/twitter/app/common/app/n;)Lcom/twitter/android/smartfollow/i;
    .locals 1

    .prologue
    .line 500
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/app/n;

    iput-object v0, p0, Lcom/twitter/android/smartfollow/i;->b:Lcom/twitter/app/common/app/n;

    .line 501
    return-object p0
.end method
