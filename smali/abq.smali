.class public Labq;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lrx/t;

.field private final c:J

.field private d:J

.field private e:Lrx/ap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Ldls;->c()Lrx/t;

    move-result-object v0

    invoke-direct {p0, v0}, Labq;-><init>(Lrx/t;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lrx/t;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Labq;->a:Lrx/subjects/e;

    .line 38
    iput-object p1, p0, Labq;->b:Lrx/t;

    .line 39
    invoke-virtual {p0}, Labq;->a()J

    move-result-wide v0

    iput-wide v0, p0, Labq;->c:J

    .line 40
    iget-wide v0, p0, Labq;->c:J

    invoke-direct {p0, v0, v1}, Labq;->b(J)Lrx/o;

    move-result-object v0

    .line 41
    iget-object v1, p0, Labq;->a:Lrx/subjects/e;

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Labq;->e:Lrx/ap;

    .line 42
    return-void
.end method

.method private b(J)Lrx/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 92
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 93
    iput-wide p1, p0, Labq;->d:J

    .line 94
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Labq;->b:Lrx/t;

    invoke-static {p1, p2, v0, v1}, Lrx/o;->a(JLjava/util/concurrent/TimeUnit;Lrx/t;)Lrx/o;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iput-wide v2, p0, Labq;->d:J

    .line 97
    invoke-static {}, Lrx/o;->d()Lrx/o;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 51
    :try_start_0
    const-string/jumbo v0, "live_video_timeline_polling_interval"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 54
    :goto_0
    return-wide v0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    const-string/jumbo v0, "live_video_timeline_polling_interval"

    .line 55
    invoke-static {v0}, Lcom/twitter/config/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0, v4, v5}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 65
    iget-wide v0, p0, Labq;->c:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 66
    iget-wide v2, p0, Labq;->d:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v2, p0, Labq;->e:Lrx/ap;

    invoke-interface {v2}, Lrx/ap;->R_()V

    .line 71
    invoke-direct {p0, v0, v1}, Labq;->b(J)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Labq;->a:Lrx/subjects/e;

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Labq;->e:Lrx/ap;

    goto :goto_0
.end method

.method public b()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Labq;->a:Lrx/subjects/e;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Labq;->a:Lrx/subjects/e;

    invoke-virtual {v0}, Lrx/subjects/e;->bt_()V

    .line 87
    iget-object v0, p0, Labq;->e:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 88
    return-void
.end method
