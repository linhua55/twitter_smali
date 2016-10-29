.class public Lcsa;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcsa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Lcom/twitter/model/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/av;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcsd;

    invoke-direct {v0}, Lcsd;-><init>()V

    sput-object v0, Lcsa;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcsc;)V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcsc;->a(Lcsc;)J

    move-result-wide v0

    iput-wide v0, p0, Lcsa;->b:J

    .line 33
    invoke-static {p1}, Lcsc;->b(Lcsc;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 34
    invoke-static {p1}, Lcsc;->b(Lcsc;)J

    move-result-wide v0

    iput-wide v0, p0, Lcsa;->c:J

    .line 38
    :goto_0
    invoke-static {p1}, Lcsc;->c(Lcsc;)J

    move-result-wide v0

    iput-wide v0, p0, Lcsa;->d:J

    .line 39
    invoke-static {p1}, Lcsc;->d(Lcsc;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcsa;->e:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcsc;->e(Lcsc;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcsa;->f:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcsc;->f(Lcsc;)Z

    move-result v0

    iput-boolean v0, p0, Lcsa;->g:Z

    .line 45
    invoke-static {p1}, Lcsc;->g(Lcsc;)Lcom/twitter/model/core/j;

    move-result-object v0

    iput-object v0, p0, Lcsa;->h:Lcom/twitter/model/core/j;

    .line 46
    return-void

    .line 36
    :cond_0
    iget-wide v0, p0, Lcsa;->b:J

    iput-wide v0, p0, Lcsa;->c:J

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p1}, Lcsc;->e(Lcsc;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcsc;Lcsb;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcsa;-><init>(Lcsc;)V

    return-void
.end method
