.class public final Lcom/twitter/app/common/list/n;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/app/common/list/ap;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/common/list/m;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/twitter/app/common/list/n;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/common/list/n;)Lcom/twitter/app/common/list/ap;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/app/common/list/n;->a:Lcom/twitter/app/common/list/ap;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/list/ap;)Lcom/twitter/app/common/list/n;
    .locals 1

    .prologue
    .line 90
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/ap;

    iput-object v0, p0, Lcom/twitter/app/common/list/n;->a:Lcom/twitter/app/common/list/ap;

    .line 91
    return-object p0
.end method

.method public a()Lcom/twitter/app/common/list/z;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/app/common/list/n;->a:Lcom/twitter/app/common/list/ap;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/twitter/app/common/list/ap;

    .line 84
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

    .line 86
    :cond_0
    new-instance v0, Lcom/twitter/app/common/list/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/app/common/list/l;-><init>(Lcom/twitter/app/common/list/n;Lcom/twitter/app/common/list/m;)V

    return-object v0
.end method
