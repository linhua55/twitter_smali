.class public Lcom/twitter/app/common/app/internal/v;
.super Lcom/twitter/config/AppConfig;
.source "Twttr"


# instance fields
.field private final a:J

.field private final b:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/config/AppConfig;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/twitter/app/common/app/internal/v;->a:J

    .line 15
    const-string/jumbo v0, "debug"

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/common/app/internal/v;->b:Z

    .line 16
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/twitter/app/common/app/internal/v;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 45
    const-wide v0, 0x156ebee229cL

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/twitter/app/common/app/internal/v;->a:J

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "r"

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x373

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method
