.class public Lanp;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:Lckg;

.field public final e:Lcom/twitter/model/core/Tweet;

.field public final f:Lcom/twitter/model/core/TwitterUser;


# direct methods
.method private constructor <init>(Lanr;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lanr;->a(Lanr;)I

    move-result v0

    iput v0, p0, Lanp;->b:I

    .line 32
    invoke-static {p1}, Lanr;->b(Lanr;)I

    move-result v0

    iput v0, p0, Lanp;->a:I

    .line 33
    invoke-static {p1}, Lanr;->c(Lanr;)J

    move-result-wide v0

    iput-wide v0, p0, Lanp;->c:J

    .line 34
    invoke-static {p1}, Lanr;->d(Lanr;)Lckg;

    move-result-object v0

    iput-object v0, p0, Lanp;->d:Lckg;

    .line 35
    invoke-static {p1}, Lanr;->e(Lanr;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iput-object v0, p0, Lanp;->e:Lcom/twitter/model/core/Tweet;

    .line 36
    invoke-static {p1}, Lanr;->f(Lanr;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    iput-object v0, p0, Lanp;->f:Lcom/twitter/model/core/TwitterUser;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lanr;Lanq;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lanp;-><init>(Lanr;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string/jumbo v1, "user"

    iget-object v2, p0, Lanp;->f:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    const-string/jumbo v1, "tweet"

    iget-object v2, p0, Lanp;->e:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 44
    const-string/jumbo v1, "list"

    iget-object v2, p0, Lanp;->d:Lckg;

    sget-object v3, Lckg;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 45
    const-string/jumbo v1, "position"

    iget v2, p0, Lanp;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string/jumbo v1, "event_type"

    iget v2, p0, Lanp;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    const-string/jumbo v1, "activity_id"

    iget-wide v2, p0, Lanp;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 48
    return-object v0
.end method
