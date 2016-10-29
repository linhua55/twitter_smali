.class public Lcsi;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcsi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcse;

.field public final c:Lcse;

.field public final d:Lcse;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcrt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcsl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcsl;-><init>(Lcsj;)V

    sput-object v0, Lcsi;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcsk;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcsk;->a(Lcsk;)Lcse;

    move-result-object v0

    iput-object v0, p0, Lcsi;->b:Lcse;

    .line 30
    invoke-static {p1}, Lcsk;->b(Lcsk;)Lcse;

    move-result-object v0

    iput-object v0, p0, Lcsi;->c:Lcse;

    .line 31
    invoke-static {p1}, Lcsk;->c(Lcsk;)Lcse;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcsk;->b(Lcsk;)Lcse;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcsi;->d:Lcse;

    .line 32
    invoke-static {p1}, Lcsk;->d(Lcsk;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcsi;->e:Ljava/util/List;

    .line 33
    return-void

    .line 31
    :cond_0
    invoke-static {p1}, Lcsk;->c(Lcsk;)Lcse;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcsk;Lcsj;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcsi;-><init>(Lcsk;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcsi;->d:Lcse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcsi;->d:Lcse;

    iget-object v0, v0, Lcse;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
