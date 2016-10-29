.class public final Lcom/twitter/library/platform/notifications/ae;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/library/platform/notifications/ae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field A:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:I

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/platform/notifications/i;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lcsa;

.field public y:Lcsi;

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcrp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/library/platform/notifications/af;

    invoke-direct {v0}, Lcom/twitter/library/platform/notifications/af;-><init>()V

    sput-object v0, Lcom/twitter/library/platform/notifications/ae;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/platform/notifications/ae;
    .locals 2

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-wide v0, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    iput-wide v0, p0, Lcom/twitter/library/platform/notifications/ae;->i:J

    .line 79
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/platform/notifications/ae;->j:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/platform/notifications/ae;->A:Ljava/lang/String;

    .line 82
    :cond_0
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/cs;)Lcom/twitter/library/platform/notifications/ae;
    .locals 2

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p1, Lcom/twitter/model/core/cs;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    .line 70
    iget-wide v0, p1, Lcom/twitter/model/core/cs;->b:J

    iput-wide v0, p0, Lcom/twitter/library/platform/notifications/ae;->h:J

    .line 72
    :cond_0
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/ae;->A:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/platform/notifications/ae;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/ae;->A:Ljava/lang/String;

    goto :goto_0
.end method
