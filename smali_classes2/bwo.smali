.class public abstract Lbwo;
.super Lbwl;
.source "Twttr"


# static fields
.field static final a:Ljava/util/concurrent/TimeUnit;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final d:Lbwp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lbwo;->a:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lbwp;

    invoke-direct {v0}, Lbwp;-><init>()V

    invoke-direct {p0, p1, v0}, Lbwo;-><init>(Ljava/lang/String;Lbwp;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lbwp;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lbwl;-><init>()V

    .line 51
    iput-object p1, p0, Lbwo;->b:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lbwo;->d:Lbwp;

    .line 53
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/util/Map;Lcom/twitter/internal/network/i;Ljava/lang/String;)Lcom/twitter/internal/network/HttpOperation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twitter/internal/network/i;",
            "Ljava/lang/String;",
            ")",
            "Lcom/twitter/internal/network/HttpOperation;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lbwo;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/library/media/manager/am;->a(Ljava/lang/String;)Lcom/twitter/library/media/manager/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/an;->a()Lcom/twitter/library/media/manager/am;

    move-result-object v0

    .line 60
    iget-object v2, p0, Lbwo;->d:Lbwp;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbwp;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/twitter/library/media/manager/l;->e()Lcom/twitter/library/media/manager/al;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v0}, Lcom/twitter/library/media/manager/al;->d(Lcom/twitter/media/request/g;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    .line 64
    const-wide/16 v2, 0x3a98

    :try_start_0
    sget-object v4, Lbwo;->a:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Lcom/twitter/util/concurrent/j;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/ResourceResponse;

    .line 65
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/media/request/ResourceResponse;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/model/VideoFile;

    .line 66
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/twitter/media/model/VideoFile;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_1
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iput-object v0, p0, Lbwo;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move-object v0, v1

    .line 65
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 66
    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected a(Landroid/content/Context;)Lcom/twitter/internal/network/i;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/util/Map;Lcom/twitter/util/network/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twitter/util/network/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    return-void
.end method

.method protected a(Landroid/net/Uri$Builder;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbwo;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwo;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbwo;->b:Ljava/lang/String;

    goto :goto_0
.end method
